# image, to build from (Node version 14 (LTS))
FROM node:14

# Args, used as such: $file
ARG file
ARG workdir
ENV FILE_NAME=$file

# Create app directory (inside image)
WORKDIR "$workdir"

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./

# install app dependencies
# RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
# This will probably need to be modified to only copy the module to benchmark
COPY ./container_src .

COPY "$file" .

CMD node benchmark_controller
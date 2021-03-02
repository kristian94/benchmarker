# image, to build from (Node version 14 (LTS))
FROM rnsloan/wasm-pack

# # Args, used as such: $fileName
ARG fileName
ENV FILE_NAME=$fileName

# # Create app directory (inside image)
WORKDIR "$workingDir"

# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
# # COPY package*.json ./

# # install app dependencies
# # RUN npm install
# # If you are building your code for production
# # RUN npm ci --only=production

# # Bundle app source
# COPY ./build/container_src .
# COPY "$filePath" .
# COPY "$argFilePath" ./args.json

# keeps container live while benchmark suite is executed. Containers are killed
# off manually when the suite is finished.
CMD sleep infinity
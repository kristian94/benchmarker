# image, to build from (Node version 14 (LTS))
FROM node:14

# Args, used as such: $fileName
ARG tempDir
ARG containerSrcDir
ARG workingDir

# Create app directory (inside image)
WORKDIR "$workingDir"

# Copy files from external fs to container
COPY $tempDir .
COPY $containerSrcDir .

# keeps container live while benchmark suite is executed. Containers are killed
# off manually when the suite is finished.
CMD sleep infinity
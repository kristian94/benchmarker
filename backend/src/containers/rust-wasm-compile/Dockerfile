# image, to build from (Node version 14 (LTS))
FROM rust:1.50.0-slim

# # Args, used as such: $fileName
ARG workingDir
ARG compilerSrcDir
ARG filePath
ARG rustPackageName

# ENV FILE_NAME=$fileName

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
COPY $compilerSrcDir ./temp
COPY $filePath "./temp/lib.rs"
# COPY "$argFilePath" ./args.json

RUN apt-get -yqq update;		\
	apt-get -yqq install curl

# wasm-pack
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# cargo-generate
# RUN apt-get -yqq install pkg-config libssl-dev git;	\
# 	cargo install cargo-generate;
# ENV USER root

# nodejs
# RUN apt-get -yqq install gnupg;									\
# 	curl -sL https://deb.nodesource.com/setup_10.x | bash -;	\
# 	apt-get install -yqq nodejs

# yarn
# RUN apt-get -yqq remove cmdtest yarn;																	\
# 	apt-get -y autoremove;																				\
# 	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -;									\
# 	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list;		\
# 	apt-get update;																						\
# 	apt-get install -yqq yarn;																			\
# 	yarn instal

# keeps container live while benchmark suite is executed. Containers are killed
# off manually when the suite is finished.
CMD sleep infinity
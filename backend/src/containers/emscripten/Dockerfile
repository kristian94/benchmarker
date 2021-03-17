FROM emscripten/emsdk

# # Args, used as such: $fileName
ARG workingDir

# # Create app directory (inside image)
WORKDIR "$workingDir"

RUN git clone --depth 1 --branch n4.3.1 https://github.com/FFmpeg/FFmpeg

# based on https://jeromewu.github.io/build-ffmpeg-webassembly-version-part-2-compile-with-emscripten/
RUN cd FFmpeg && emconfigure ./configure \
    --target-os=none \
    --arch=x86_32 \
    --enable-cross-compile \
    --disable-x86asm \
    --disable-inline-asm \    
    --disable-stripping \    
    --disable-programs \     
    --disable-doc \          
    --extra-cflags="-s USE_PTHREADS" \
    --extra-cxxflags="-s USE_PTHREADS" \
    --extra-ldflags="-s USE_PTHREADS -s INITIAL_MEMORY=33554432" \
    --nm="llvm-nm -g" \
    --ar=emar \
    --as=llvm-as \
    --ranlib=llvm-ranlib \
    --cc=emcc \
    --cxx=em++ \
    --objcc=emcc \
    --dep-cc=emcc

RUN cd FFmpeg && emmake make -j4

RUN mkdir -p FFmpeg/wasm/dist

RUN cd FFmpeg && emcc \
    -I. -I./fftools \
    -Llibavcodec -Llibavdevice -Llibavfilter -Llibavformat -Llibavresample -Llibavutil -Llibpostproc -Llibswscale -Llibswresample \
    -Qunused-arguments \
    -o wasm/dist/ffmpeg.js fftools/ffmpeg_opt.c fftools/ffmpeg_filter.c fftools/ffmpeg_hw.c fftools/cmdutils.c fftools/ffmpeg.c \
    -lavdevice -lavfilter -lavformat -lavcodec -lswresample -lswscale -lavutil -lm \
    -s USE_SDL=2 \
    -s USE_PTHREADS=1 \        
    -s INITIAL_MEMORY=33554432      

CMD sleep infinity
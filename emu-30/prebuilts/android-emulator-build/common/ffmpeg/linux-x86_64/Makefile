.PHONY: all
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

lib/libavcodec.a:
	mkdir -p ../../../../wd/ffmpeg-build
	cd ../../../../wd/ffmpeg-build && \
	../../tarballs/ffmpeg-3.4.8/configure \
		--prefix=${ROOT_DIR} \
		--extra-ldflags="-ldl" \
    --disable-xlib \
    --extra-ldflags="-L${ROOT_DIR}/../../x264/linux-x86_64/lib" \
    --enable-pic \
    --extra-ldflags="-L${ROOT_DIR}/../../libvpx/linux-x86_64/lib" \
		--enable-libx264 \
    --extra-cflags=-O3 \
  	--extra-cflags="-I${ROOT_DIR}/../../x264/linux-x86_64/include" \
    --extra-cflags="-I${ROOT_DIR}/../../libvpx/linux-x86_64/include" \
    --enable-static \
  	--disable-doc \
    --disable-programs \
    --enable-gpl \
    --disable-asm \
    --disable-yasm \
    --disable-avdevice \
    --disable-filters \
    --enable-avresample \
    --enable-libvpx \
    --disable-muxers \
    --enable-muxer=gif \
    --enable-muxer=webm \
    --enable-muxer=webm_chunk_muxer \
    --enable-muxer=webm_dash_manifest_muxer \
    --disable-demuxers \
    --enable-demuxer=webm \
    --enable-demuxer=matroska \
    --enable-demuxer=webm_chunk_muxer \
    --enable-demuxer=mov \
    --enable-demuxer=webm_dash_manifest_muxer \
    --disable-protocols \
    --enable-protocol=file \
    --disable-encoders \
    --enable-encoder=gif \
    --enable-encoder=libvpx_vp9 \
    --enable-encoder=vorbis \
    --disable-decoders \
    --enable-decoder=gif \
    --enable-decoder=libvpx_vp9 \
    --enable-decoder=vorbis \
    --enable-decoder=h264	&& \
	make -j6 && \
	make install

clean:
	rm -rf include/ lib/ share/

distclean: clean
	rm -rf ../../../../wd/ffmpeg-build

all: lib/libavcodec.a

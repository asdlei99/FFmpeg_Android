#!/bin/sh
CPU=arm
PREFIX=$(pwd)/android/$CPU
ADDI_CFLAGS="-marm"
NDK=/home/wgg/wgg/android-ndk-r11c
SYSROOT=$NDK/platforms/android-21/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
./configure \
    --prefix=$PREFIX \
    --target-os=linux \
    --enable-cross-compile \
    --enable-runtime-cpudetect \
    --disable-asm \
    --arch=arm \
    --enable-nonfree \
    --enable-shared \
    --enable-version3 \
    --enable-gpl \
    --disable-programs \
    --disable-ffmpeg \
    --disable-ffplay \
    --disable-ffprobe \
    --disable-ffserver \
    --disable-doc \
    --enable-avresample \
    --disable-everything \
    --enable-decoder=pcm_alaw \
    --enable-decoder=pcm_mulaw \
    --enable-decoder=mpeg4 \
    --enable-decoder=h264 \
    --enable-encoder=aac \
    --enable-librtmp \
    --enable-libx264 \
    --enable-parser=aac \
    --enable-parser=h264 \
    --enable-parser=mpeg4video \
    --enable-parser=mpegvideo \
    --enable-parser=mpegaudio \
    --enable-encoder=libx264 \
    --enable-muxer=mpegts \
    --enable-muxer=flv \
    --enable-muxer=h264 \
    --enable-muxer=flv \
    --enable-muxer=mp4 \
    --enable-muxer=data \
    --enable-muxer=avi \
    --enable-muxer=mpeg2video \
    --enable-muxer=pcm_alaw \
    --enable-muxer=pcm_mulaw \
    --enable-demuxer=flv \
    --enable-demuxer=mpegts \
    --enable-demuxer=rtsp \
    --enable-protocol=httpproxy \
    --enable-protocol=crypto \
    --enable-protocol=ftp\
    --enable-protocol=unix\
    --enable-protocol=pipe \
    --enable-protocol=data \
    --enable-protocol=file \
    --enable-protocol=tcp \
    --enable-protocol=http \
    --enable-protocol=udp \
    --enable-protocol=udplite \
    --enable-protocol=rtp \
    --enable-protocol=librtmp \
    --enable-protocol=librtmpe \
    --enable-protocol=librtmps \
    --enable-protocol=librtmpt \
    --enable-protocol=librtmpte \
    --enable-protocol=async \
    --enable-protocol=md5 \
    --enable-protocol=cache \
    --enable-protocol=mmst \
    --enable-protocol=mmsh \
    --sysroot=$SYSROOT \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
    --enable-hwaccels \
    --enable-zlib \
    --disable-devices \
    --disable-avdevice \
    --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
    --extra-cflags="-I/home/wgg/wgg/ffmpeg/extern/include" \
       --extra-ldflags="-L/home/wgg/wgg/ffmpeg/extern/lib"

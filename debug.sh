#########################################################################
# File Name: debug.sh
# Author: liyl
# mail: liyunlong_88@126.com
# Created Time: 2016年02月16日 星期二 21时48分10秒
#########################################################################
#!/bin/bash
#./x264 -v   --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 
b main
b encoder/encoder.c:3753
b encoder/lookahead.c:116
b x264_slicetype_decide
b x264_slicetype_analyse
b scenecut
b scenecut_internal
b x264_slicetype_frame_cost
run -v --threads 1  --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 

#valgrind --tool=drd --trace-children=yes  ./x264 -v   --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 
#valgrind --tool=massif --trace-children=yes  ./x264 -v   --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 
#valgrind --tool=helgrind --trace-children=yes --vgdb-error=1 ./x264 -v   --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 
#valgrind --tool=cachegrind --trace-children=yes --vgdb-error=1 ./x264 -v   --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 
valgrind --tool=callgrind --trace-children=yes --vgdb-error=1 ./x264 -v --threads 1  --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 
#valgrind --tool=memcheck --trace-children=yes   --track-origins=yes  --show-reachable=yes --leak-check=full --keep-stacktraces=alloc-then-free --db-attach=yes ./x264 -v --threads 1   --pass 1 --bitrate 2000 -o test.264 --input-res 1280x720 --input-csp i420 ./1280_720_frame_10.yuv 


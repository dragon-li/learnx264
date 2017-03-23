#show macro define,please modify config.mak cflag
#preprocessor_opt="-E -dD"

make clean
./configure --enable-debug  --enable-static --disable-asm --extra-cflags="-DLIYL_DEBUG"
make
sh ../ctags_cscope.sh

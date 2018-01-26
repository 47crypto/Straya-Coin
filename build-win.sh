# get dependencies
apt-get update
apt-get install -y g++-mingw-w64-x86-64 mingw-w64-x86-64-dev curl make

# build
cd depends
make HOST=x86_64-w64-mingw32
cd ..
./autogen.sh # not required when building from tarball
CONFIG_SITE=$PWD/depends/x86_64-w64-mingw32/share/config.site ./configure --prefix=/
make

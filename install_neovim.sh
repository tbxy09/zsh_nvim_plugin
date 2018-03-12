cd /opt/
gc https://github.com/neovim/neovim.git
cd neovim
make

sudo make install
rm -r build/
make CMAKE_EXTRA_FLAGS=-DCMAKE_INSTALL_PREFIX=/root/neovim
make install

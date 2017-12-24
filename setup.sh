sudo apt-get install libavcodec-dev

cd live
export CPPFLAGS=-fPIC CFLAGS=-fPIC
./genMakefiles linux
make
sudo make install

cd ../live555
python setup.py build
sudo -H python setup.py install

cd ../pyh264decode
python setup.py build
sudo -H python setup.py install



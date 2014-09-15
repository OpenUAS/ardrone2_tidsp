
TIDSP := C6000_6.0.3/README.txt



all: $(TIDSP)
	git submodule init
	git submodule sync
	git submodule update
	make -C ./userspace-dspbridge/source/




$(TIDSP): ./vendor/C6000_6.0.3.tar.gz
	tar -xzf ./vendor/C6000_6.0.3.tar.gz ./
	tar -xzf ./vendor/bios_5_33_04.tar.gz ./


./vendor/C6000_6.0.3.tar.gz:
	svn co https://svn.lr.tudelft.nl/MAVLAB/NDA/ ./vendor

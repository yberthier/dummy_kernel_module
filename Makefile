obj-m += hello-1.o 
 
PWD := $(CURDIR)
BUILD_DIR := $(PWD)/build
 
all: 
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD)  O=$(BUILD_DIR) modules 
 
clean: 
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
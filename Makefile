current_dir = $(shell pwd)

all: clean build
clean:
	echo "Cleaning up ..."
	rm -rf BUILD/* BUILDROOT/* RPMS/* SRPMS/*

lint:
	rpmlint SPECS/satellite-convert2rhel-appliance.spec

build:
	echo "Building the package ..."
	rpmbuild --buildroot=$(current_dir)/BUILD --define "_topdir $(current_dir)" \
					 -bb SPECS/satellite-convert2rhel-appliance.spec

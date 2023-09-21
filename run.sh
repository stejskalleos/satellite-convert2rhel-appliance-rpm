# TODO: Make it as Makefile

tar --create --file $(pwd)/SOURCES/source.tar.gz scripts/main.sh
c;rpmbuild --buildroot=$(pwd)/BUILD --define "_topdir $(pwd)" -ba SPECS/satellite-convert2rhel-appliance.spec

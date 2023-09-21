# TODO: Make it as Makefile

c;rpmbuild --buildroot=$(pwd)/BUILD --define "_topdir $(pwd)" -ba SPECS/satellite-convert2rhel-appliance.spec

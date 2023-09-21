Name:     satellite-convert2rhel-appliance
Version:  0.0.1
Release:  1%{?dist}
Summary:  TODO
License:  GPL
URL:      https://todo.org

Requires: bash

Source0:  source.tar.gz

%description
TODO

# %prep
# %setup -q

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT%{_bindir}
cp /home/lstejska/projects/c2r/rpm/scripts/main.sh $RPM_BUILD_ROOT%{_bindir}/satellite-convert2rhel-appliance

%files
%{_bindir}/satellite-convert2rhel-appliance

%clean
echo NOOP

%changelog

* Tue Sep 12 2023 Stejskal Leos <lstejska@redhat.com>  0.0.1
Bla bla bla progress

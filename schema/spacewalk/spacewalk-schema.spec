Name:           spacewalk-schema
Group:          Applications/Internet
Summary:        Oracle SQL schema for Spacewalk server.

Version:        0.1.0
Release:        0
Source0:        %{name}-%{version}.tar.gz

License:        GPLv2
Url:            http://fedorahosted.org/spacewalk/
BuildArch:      noarch
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

Provides:       spacewalk-schema

%define rhnroot /etc/sysconfig/rhn/

%description
rhn-satellite-schema is the Oracle SQL schema for the Spacewalk server.
Oracle tablespace name conversions have NOT been applied.

%prep
%setup -c -T

%build 
rm -rf $RPM_BUILD_ROOT

%install
rm -rf $RPM_BUILD_ROOT
install -m 0755 -d $RPM_BUILD_ROOT%{rhnroot}
install -m 0644 %{SOURCE0} $RPM_BUILD_ROOT%{rhnroot}
#install -m 0755 %{SOURCE1} $RPM_BUILD_ROOT%{rhnroot}

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root)
%{rhnroot}/*

%changelog
* Tue Aug  5 2008 Michael Mraka <michael.mraka@redhat.com>
- renamed from rhn-satellite-schema and changed version

* Mon Jun  9 2008 Michael Mraka <michael.mraka@redhat.com> 5.2.0-2
- fixed build issue

* Tue Jun  3 2008 Michael Mraka <michael.mraka@redhat.com> 5.2.0-1
- purged unused code
- rebuilt via brew / dist-cvs


class rancid::initialize {

    exec { "/bin/su -c ${basedir}/bin/rancid-cvs -s /bin/bash -l rancid":
        refreshonly => true,
    }

}

class rancid::initialize {

    exec { "su -c ${basedir}/bin/rancid-cvs -s /bin/bash -l rancid":
        refreshonly => true,
    }

}

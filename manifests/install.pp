class rancid::install {

   package { [ 'rancid', 'rancid-cgi' ]:
      ensure => $rancid::version
   }

   # nice addons to rancid
   if ! defined (Package['diffstat']) {
     package {'diffstat': ensure => installed; }
   }

}

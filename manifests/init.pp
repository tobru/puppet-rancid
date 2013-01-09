# == Class: rancid
#
# A basic module to manage rancid
#
# === Parameters
# [*version*]
#   The package version to install
#
# [*basedir*]
#   Home dir of rancid
#
# [*rcssys*]
#   RCS to use (cvs or svn)
#
# [*groups*]
#   Array of rancid groups (grouping of network devices)
#
# [*webserver_user*]
#   Username of the webserver user (will be added to the rancid group)
#
class rancid(
   $version = 'present',
   $basedir = '/var/lib/rancid',
   $rcssys = 'svn',
   $groups = [],
   $webserver_user = 'www-data',
) {
   class{'rancid::install': } ->
   class{'rancid::user': } ->
   class{'rancid::config': } ~>
   class{'rancid::initialize': } ->
   Class['rancid']
}

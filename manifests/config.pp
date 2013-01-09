class rancid::config {

  $basedir = $rancid::basedir
  $rcssys = $rancid::rcssys
  $groups = $rancid::groups

  File {
    owner   => rancid,
    group   => rancid,
    mode    => '0644',
  }

  file { '/etc/rancid/rancid.conf':
    content => template('rancid/rancid.conf.erb');
  }

  # prepare .cloginrc (no content, just an empty file
  # with correct permission -> important)
  file { "${basedir}/.cloginrc":
    ensure => present,
    mode   => '0600',
  }

  # ensure that some dirs and subdirs are owned by rancid
  file { [ '/var/log/rancid', "${basedir}" ]:
    ensure  => directory,
  }

}

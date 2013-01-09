# Puppet Module for RANCID

This is a simple Puppet module for installing and configuring RANCID - Really Awesome New Cisco confIg Differ.

Read more about RANCID: [RANCID Website](http://www.shrubbery.net/rancid/)

## Supported OS

* Debian
* Ubuntu

# Basic usage

```Puppet
class { ::rancid:
  groups => [ 'router', 'switches' ],
}
```

Create some Mailaliases
```Puppet
mailalias {
  [ 'rancid-router', 'rancid-switches' ]:
      ensure    => present,
      notify    => Exec['newaliases'],
      recipient => 'yourname@yourdomain.com';

  [ 'rancid-admin-router', 'rancid-admin-switches' ]:
      ensure    => present,
      notify    => Exec['newaliases'],
      recipient => 'yourname@yourdomain.com';
}
```

Define cron jobs
```Puppet
cron {
  'Rancid run':
      command => '/usr/bin/rancid-run',
      user    => 'rancid',
      minute  => '15',
      hour    => [6, 12, 15, 18, 23],

  'Rancid cleanup':
      command => '/usr/bin/find /var/log/rancid -type f -mtime +2 -exec rm {} \;',
      user    => 'rancid',
      minute  => '50',
      hour    => '23';
}
```

# Author

* Tobias Brunner <tobias@tobru.ch>


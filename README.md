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

# Author

* Tobias Brunner <tobias@tobru.ch>


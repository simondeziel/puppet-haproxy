# Puppet HAProxy

Manages HAProxy via Puppet.

## Requirements
* Ubuntu LTS (18.04 or later)

## Usage

To deploy HAProxy using a specific configuration:

```puppet

  # custom template
  $haproxy_conf = epp('example/haproxy.cfg.epp', {
    'public_ipv4' => '192.0.2.1',
    'public_ipv6' => 'fe80::fc54:2:1',
  })

  class { 'haproxy':
    config_content => $haproxy_conf,
  }
```

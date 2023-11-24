# Install flask 
package { 'python3-pip':
  ensure => installed,
}

package { 'python3-dev':
  ensure => installed,
}

package { 'build-essential':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
  require => [Package['python3-pip'], Package['python3-dev'], Package['build-essential']],
}

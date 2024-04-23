#!/usr/bin/pup
# Using Puppet, install flask from pip3.

package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}

# adding directory to PATH
exec { 'update_path':
  command     => 'export PATH=$PATH:/path/to/directory/containing/flask',
  path        => ['/bin', '/usr/bin', '/usr/local/bin'],
  refreshonly => true,
}
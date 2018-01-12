file {'/etc/motd1':
        content => 'This is my testing content',
      }
service {'postfix':
  ensure => stopped,
  enable => 'false',
}

package {'ntp':
  ensure => installed,
}

service {'ntpd':
  ensure => running,
}

file {'/tmp/manav':
  content => 'This is Manvendra S. Yadav file....',
  mode    => '0644',
  owner   => 'root',
  group   => 'ec2-user',
}

package { 'openssh':
  ensure => present,
}

package {'httpd':
  ensure => 'latest',
}

service { 'httpd':
  ensure => running,
  enable => true,
}

package {'wget':
  ensure => installed,
}

package { 'httpd':
  ensure => 'installed',
}

service { 'httpd':
  ensure => 'running'
}

package { 'mysql-server':
  ensure => 'installed',
}

service { 'mysql':
  ensure => 'running',
}



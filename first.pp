file { '/tmp/first':
  ensure => 'file',
  owner => 'ec2-user',
  group => 'ec2-user',
  mode => '0666',
  content => 'My name is Manvendra S. Yadav',
}

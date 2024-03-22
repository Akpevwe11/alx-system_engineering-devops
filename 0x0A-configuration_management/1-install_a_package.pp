# install flask 2.1.0 from pip3
exec { 'update pip':
  command => '/usr/bin/pip3 install --upgrade pip',
  path    => ['/bin', '/usr/bin'],
}

exec { 'install flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/bin', '/usr/bin'],
  require => Exec['update pip'],
}

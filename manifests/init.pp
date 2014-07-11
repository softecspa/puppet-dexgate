class dexgate {

  include ia32_libs
  package { 'libc6-i386': ensure  => installed }

  service { 'dexgate' :
    ensure        => running,
    hasrestart    => false,
    hasstatus     => false,
    pattern       => '/usr/local/dexgate/wrapper',
    start         => '/usr/local/dexgate/start.sh',
    stop          => '/usr/local/dexgate/stop.sh',
  }
}

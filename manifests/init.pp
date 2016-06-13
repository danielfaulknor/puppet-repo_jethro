# Sets up the repositories for apt.netbydesign.nz
class repo_netbydesign {

  if ( $::osfamily == 'Debian' ) {

    apt::source { 'ibd':
        location   => "http://apt.netbydesign.nz/debian/",
        repos      => 'main',
        key        => 'E12EA1180C929E7F2133C83E6393734839DA8F29',
        key_source => 'puppet://module/repo_netbydesign/netbydesign_signing.gpg.key'
    }

    }
  } else{
    notify { "repo_netbydesign not supported for your platform.":
      loglevel => debug,
    }
  }

}

# Sets up the repositories for apt.netbydesign.nz
class repo_netbydesign {

    apt::source { 'ibd':
        location   => "http://apt.netbydesign.nz/debian/",
        repos      => 'main',
	key 	   => { 
			'id' => 'E12EA1180C929E7F2133C83E6393734839DA8F29',
			'source' => 'https://apt.netbydesign.nz/debian/ibd_dan_signing.gpg.key'
		      }
    }

}

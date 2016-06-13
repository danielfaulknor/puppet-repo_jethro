# Sets up the repositories for apt.netbydesign.nz
class repo_netbydesign {

    apt::source { 'ibd':
        location   => "http://apt.netbydesign.nz/debian/",
        repos      => 'main',
	key 	   => { 'source' => 'https://apt.netbydesign.nz/debian/ibd_dan_signing.gpg.key' }
    }

}

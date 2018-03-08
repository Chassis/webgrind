# A Chassis extension to install and configure Webgrind on your Chassis server
class webgrind (
	$config,
	$path   = '/vagrant/extensions/webgrind',
) {
	if ( ! empty( $config[disabled_extensions] ) and 'chassis/webgrind' in $config[disabled_extensions] ) {
		$file = absent
	} else {
		$file = link
	}

	exec { 'clone webgrind':
		path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
		command => 'git clone https://github.com/jokkedk/webgrind.git /vagrant/extensions/webgrind/source',
		require => Package[ 'git-core' ],
		unless  => 'test -d /vagrant/extensions/webgrind/source'
	}
	file { '/vagrant/webgrind':
		ensure => $file,
		target => '/vagrant/extensions/webgrind/source',
		notify => Service['nginx'],
	}
}

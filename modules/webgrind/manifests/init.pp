# A Chassis extension to install and configure Webgrind on your Chassis server
class webgrind (
	$path   = '/vagrant/extensions/webgrind',
) {
	exec { 'clone webgrind':
		path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
		command => 'git clone https://github.com/jokkedk/webgrind.git /vagrant/extensions/webgrind/source',
		require => Package[ 'git-core' ],
		unless  => 'test -d /vagrant/extensions/webgrind/source'
	}
	file { '/vagrant/webgrind':
		ensure => link,
		target => '/vagrant/extensions/webgrind/source',
		notify => Service['nginx'],
	}
}

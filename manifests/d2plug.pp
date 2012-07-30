# D2Plug 
#
# This was written for Globalscale D2 Plug
#
# Ubuntu Lucid 10.4
#
# Armtel processor
#
# Note:  On the plug, I had to install puppet from tarball, 
#	 because puppetlabs did not have an armtel build 
#	 available in apt.puppetlabs.com at the time (7/12)
#
#	 #2:  also changed the password and did an 
#	 'apt-get upgrade', before running this on it.
#

node 'plugger' {
	class { 'hostname':
		hostname	=> 'plugger',
	}
	class { 'common': }
	class { 'vnc': }
	class { 'webcam': }
	class { 'wifi': }

	# add .bashrc

}




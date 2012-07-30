# Sets Hostname
# ubuntu
class hostname ($hostname) {

	file { "/etc/hostname":
		ensure	=> present,
		content	=> $hostname,
	}

	exec { "setHostname":
		path	=> ["/bin", "/usr/bin"],
		command	=> "hostname $hostname",
		onlyif	=> "test `hostname` -ne $hostname",
	}
	
}



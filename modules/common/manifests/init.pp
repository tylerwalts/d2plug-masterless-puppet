# Common things to have on every server
class common {

	# vim
	package{"vim":
		ensure	=> "latest",
	}

	# SSH
	package{"openssh-server": 
		ensure	=> "latest",
	}
	package{"openssh-client":
		ensure	=> "latest",
	}

}


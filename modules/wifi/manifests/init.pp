# WiFi
class wifi {
	package{"wpasupplicant":
		ensure	=> "latest",
	}
	package{"wicd": 
		ensure	=> "latest",
	}
	package{"network-manager":
		ensure	=> "latest",
	}
}

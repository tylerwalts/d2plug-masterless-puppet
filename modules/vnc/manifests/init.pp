
# VNC server
class vnc {
	package{"x11vnc":
		ensure	=> "latest",
	}
	package{"vnc-java":
		ensure	=> "latest",
	}

# /home/ubuntu/.vnc/passwd
# x11vnc -forever -usepw -httpdir /usr/share/vnc-java/ -httpport 5800

}

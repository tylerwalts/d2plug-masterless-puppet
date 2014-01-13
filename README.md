Masterless Puppet

A tool to configure servers, this uses puppet to install role-based resources on localhost, without using a puppet master server.  Optionally, it can be called regularly by cron to ensure the server always maintains a desired configuration state.  The goal is to automate server setup, maintain configuration state, save common recipes for re-use on other servers and serve as part of a disaster recovery solution.  


How to use:

1.  Install Puppet.  Make sure it is at least 2.7
	http://docs.puppetlabs.com/guides/installation.html
2.  Download this
	git
3.  Be in path
	cd /PATH/TO/masterless_puppet
4.  Select a manifest, or make one
	Manifests define what goes on a server.  They reference
	modules, which define how the resources get configured.
5.  Test run puppet  (note the "--noop" for No Operation)
	sudo puppet apply [SERVER_MANIFEST] --modulepath modules --noop
	# Check for any errors here, and update manifest or module 
6.  Run puppet  
	sudo puppet apply [SERVER_MANIFEST] --modulepath modules 


Example, using D2Plug manifest:

	sudo puppet apply manifests/d2plug.pp --modulepath modules





[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tylerwalts/d2plug-masterless-puppet/trend.png)](https://bitdeli.com/free "Bitdeli Badge")


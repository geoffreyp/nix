{
  network.description = "Web server CGI";
  webserver = { config, pkgs, ... }: {
    networking.firewall.allowedTCPPorts = [ 80 ];
    services.lighttpd = {
      enable = true;
      #adminAddr = "geoffrey@pruvost.xyz";
      document-root = import ./default.nix;
      enableModules = [ "mod_cgi" ];
		extraConfig = ''
		cgi.assign = ( ".py"  => "${pkgs.python3}/bin/python" )
		'';
    };
    deployment = {
      targetEnv = "virtualbox";
      virtualbox = {
        memorySize = 512;
        vcpu = 1;
        headless = true;
      };
    };
  };
}

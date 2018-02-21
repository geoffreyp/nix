{
  network.description = "Web server CGI Haskell";
  webserver = { config, pkgs, ... }: {
    networking.firewall.allowedTCPPorts = [ 80 ];
    services.lighttpd = {
      enable = true;
      #adminAddr = "geoffrey@pruvost.xyz";
      document-root = import ./default.nix;
      enableModules = [ "mod_cgi" ];
		extraConfig = ''
		cgi.assign = ( ".cgi"  => "" )
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

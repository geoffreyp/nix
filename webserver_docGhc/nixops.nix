{
  network.description = "Web server";
  webserver = { config, pkgs, ... }: {
    networking.firewall.allowedTCPPorts = [ 80 ];
    services.lighttpd = {
      enable = true;
      #adminAddr = "geoffrey@pruvost.xyz";
      document-root = "${pkgs.ghc.doc}/share/doc/ghc/html";
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

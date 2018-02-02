{
  network.description = "Web server";
  webserver = { config, pkgs, ... }: {
    networking.firewall.allowedTCPPorts = [ 80 ];
    services.httpd = {
      enable = true;
      adminAddr = "geoffrey@pruvost.xyz";
      documentRoot = "${pkgs.ghc.doc}/share/doc/ghc/html";
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

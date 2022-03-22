{
  description          = "Nimble packages updater";
  inputs.dsf.url       = "github:cruel-intentions/devshell-files";
  inputs.nimcr.url     = "github:nim-nix-pkgs/nimcr";
  inputs.nimblesrc.url = "github:nim-nix-pkgs/nimble";

  outputs = { self, dsf, nimcr, nimblesrc }: dsf.lib.mkShell [
    ./project.nix
    { 
      devshell.packages = [ nimcr.defaultPackage.x86_64-linux ];
      env = [ 
        { 
          name  = "NIMBLESRC_PATH";
          value = "${nimblesrc.defaultPackage.x86_64-linux}";
        }
      ];
    }
  ];
}

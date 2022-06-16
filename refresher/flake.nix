{
  description          = "Nimble packages updater";
  inputs.dsf.url       = "github:cruel-intentions/devshell-files";
  inputs.nimblesrc.url = "github:nim-lang/nimble";

  outputs = { self, dsf, nimblesrc }: dsf.lib.mkShell [
    ./project.nix
    { 
      env = [ 
        { 
          name  = "NIMBLESRC_PATH";
          value = "${nimblesrc.defaultPackage.x86_64-linux}";
        }
      ];
    }
  ];
}

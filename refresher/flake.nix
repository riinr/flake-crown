{
  description          = "Nimble packages updater";
  inputs.dsf.url       = "github:cruel-intentions/devshell-files";

  outputs = { self, dsf }: dsf.lib.mkShell [
    ./project.nix
    { 
      # env = [ 
      #   { 
      #     name  = "NIMBLESRC_PATH";
      #     value = "${nimblesrc.defaultPackage.x86_64-linux}";
      #   }
      # ];
    }
  ];
}

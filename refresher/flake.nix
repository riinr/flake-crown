{
  description             = "Nimble packages updater";
  inputs.dsf.url          = "github:cruel-intentions/devshell-files";
  inputs.nimble-src.url   = "github:nim-lang/nimble";
  inputs.nimble-src.flake = false;

  outputs = { self, dsf, nimble-src }: dsf.lib.mkShell [
    ( import ./project.nix { inherit nimble-src; } )
  ];
}

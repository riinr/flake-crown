{
  description             = "Nimble packages updater";
  inputs.dsf.url          = "github:cruel-intentions/devshell-files";
  inputs.nimble-src.url   = "github:nim-lang/nimble";
  inputs.nimble-src.flake = false;

  outputs = inputs: inputs.dsf.lib.shell inputs [ ./project.nix ];
}

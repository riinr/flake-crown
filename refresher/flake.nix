{
  description = "Nimble packages updater";
  inputs.dsf.url = "github:cruel-intentions/devshell-files";
  inputs.nimcr.url = "github:nim-nix-pkgs/nimcr";

  outputs = { self, dsf, nimcr }: dsf.lib.mkShell [
    ./project.nix
    { devshell.packages = [ nimcr.defaultPackage.x86_64-linux ]; }
  ];
}

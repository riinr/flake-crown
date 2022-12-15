{
  description = "Nim Pkgs REV for fetchGit";
  outputs = inputs: 
  {
    lib.packages = import ./packages.nix;
    lib.resolve  = import ./resolve.nix;
    lib.srcs     = resolveArgs: builtins.map (v: v.src) (builtins.attrValues (inputs.self.lib.resolve resolveArgs));
  };
}

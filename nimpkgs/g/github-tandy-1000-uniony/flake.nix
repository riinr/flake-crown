{
  description = ''A jsony plugin to enable union support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-tandy-1000-uniony-devel".dir   = "devel";
  inputs."github-tandy-1000-uniony-devel".owner = "nim-nix-pkgs";
  inputs."github-tandy-1000-uniony-devel".ref   = "master";
  inputs."github-tandy-1000-uniony-devel".repo  = "github-tandy-1000-uniony";
  inputs."github-tandy-1000-uniony-devel".type  = "github";
  inputs."github-tandy-1000-uniony-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-tandy-1000-uniony-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
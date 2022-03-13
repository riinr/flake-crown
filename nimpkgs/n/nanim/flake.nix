{
  description = ''Create smooth GPU-accelerated animations that can be previewed live or rendered to videos.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nanim-main".dir   = "main";
  inputs."nanim-main".owner = "nim-nix-pkgs";
  inputs."nanim-main".ref   = "master";
  inputs."nanim-main".repo  = "nanim";
  inputs."nanim-main".type  = "github";
  inputs."nanim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
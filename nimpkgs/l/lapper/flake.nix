{
  description = ''fast interval overlaps'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lapper-master".dir   = "master";
  inputs."lapper-master".owner = "nim-nix-pkgs";
  inputs."lapper-master".ref   = "master";
  inputs."lapper-master".repo  = "lapper";
  inputs."lapper-master".type  = "github";
  inputs."lapper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lapper-v0_1_7".dir   = "v0_1_7";
  inputs."lapper-v0_1_7".owner = "nim-nix-pkgs";
  inputs."lapper-v0_1_7".ref   = "master";
  inputs."lapper-v0_1_7".repo  = "lapper";
  inputs."lapper-v0_1_7".type  = "github";
  inputs."lapper-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lapper-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A wrapper for the libsass library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sass-master".dir   = "master";
  inputs."sass-master".owner = "nim-nix-pkgs";
  inputs."sass-master".ref   = "master";
  inputs."sass-master".repo  = "sass";
  inputs."sass-master".type  = "github";
  inputs."sass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sass-v0_1_0".dir   = "v0_1_0";
  inputs."sass-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sass-v0_1_0".ref   = "master";
  inputs."sass-v0_1_0".repo  = "sass";
  inputs."sass-v0_1_0".type  = "github";
  inputs."sass-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sass-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sass-v0_2_0".dir   = "v0_2_0";
  inputs."sass-v0_2_0".owner = "nim-nix-pkgs";
  inputs."sass-v0_2_0".ref   = "master";
  inputs."sass-v0_2_0".repo  = "sass";
  inputs."sass-v0_2_0".type  = "github";
  inputs."sass-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sass-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
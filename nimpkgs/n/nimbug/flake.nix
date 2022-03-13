{
  description = ''Nim Semi-Auto Bug Report Tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbug-master".dir   = "master";
  inputs."nimbug-master".owner = "nim-nix-pkgs";
  inputs."nimbug-master".ref   = "master";
  inputs."nimbug-master".repo  = "nimbug";
  inputs."nimbug-master".type  = "github";
  inputs."nimbug-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbug-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbug-0_1_1".dir   = "0_1_1";
  inputs."nimbug-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimbug-0_1_1".ref   = "master";
  inputs."nimbug-0_1_1".repo  = "nimbug";
  inputs."nimbug-0_1_1".type  = "github";
  inputs."nimbug-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbug-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
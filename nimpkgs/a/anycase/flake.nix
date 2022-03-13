{
  description = ''Convert strings to any case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anycase-master".dir   = "master";
  inputs."anycase-master".owner = "nim-nix-pkgs";
  inputs."anycase-master".ref   = "master";
  inputs."anycase-master".repo  = "anycase";
  inputs."anycase-master".type  = "github";
  inputs."anycase-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anycase-v0_1_0".dir   = "v0_1_0";
  inputs."anycase-v0_1_0".owner = "nim-nix-pkgs";
  inputs."anycase-v0_1_0".ref   = "master";
  inputs."anycase-v0_1_0".repo  = "anycase";
  inputs."anycase-v0_1_0".type  = "github";
  inputs."anycase-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anycase-v0_1_1".dir   = "v0_1_1";
  inputs."anycase-v0_1_1".owner = "nim-nix-pkgs";
  inputs."anycase-v0_1_1".ref   = "master";
  inputs."anycase-v0_1_1".repo  = "anycase";
  inputs."anycase-v0_1_1".type  = "github";
  inputs."anycase-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
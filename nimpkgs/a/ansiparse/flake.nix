{
  description = ''Library to parse ANSI escape codes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ansiparse-master".dir   = "master";
  inputs."ansiparse-master".owner = "nim-nix-pkgs";
  inputs."ansiparse-master".ref   = "master";
  inputs."ansiparse-master".repo  = "ansiparse";
  inputs."ansiparse-master".type  = "github";
  inputs."ansiparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiparse-v0_2_0".dir   = "v0_2_0";
  inputs."ansiparse-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ansiparse-v0_2_0".ref   = "master";
  inputs."ansiparse-v0_2_0".repo  = "ansiparse";
  inputs."ansiparse-v0_2_0".type  = "github";
  inputs."ansiparse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
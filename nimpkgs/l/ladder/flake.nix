{
  description = ''Ladder logic macros for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ladder-master".dir   = "master";
  inputs."ladder-master".owner = "nim-nix-pkgs";
  inputs."ladder-master".ref   = "master";
  inputs."ladder-master".repo  = "ladder";
  inputs."ladder-master".type  = "github";
  inputs."ladder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ladder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ladder-0_4_0".dir   = "0_4_0";
  inputs."ladder-0_4_0".owner = "nim-nix-pkgs";
  inputs."ladder-0_4_0".ref   = "master";
  inputs."ladder-0_4_0".repo  = "ladder";
  inputs."ladder-0_4_0".type  = "github";
  inputs."ladder-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ladder-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
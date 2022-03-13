{
  description = ''PF_RING wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pfring-master".dir   = "master";
  inputs."pfring-master".owner = "nim-nix-pkgs";
  inputs."pfring-master".ref   = "master";
  inputs."pfring-master".repo  = "pfring";
  inputs."pfring-master".type  = "github";
  inputs."pfring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pfring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pfring-0_0_2".dir   = "0_0_2";
  inputs."pfring-0_0_2".owner = "nim-nix-pkgs";
  inputs."pfring-0_0_2".ref   = "master";
  inputs."pfring-0_0_2".repo  = "pfring";
  inputs."pfring-0_0_2".type  = "github";
  inputs."pfring-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pfring-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pfring-0_0_3".dir   = "0_0_3";
  inputs."pfring-0_0_3".owner = "nim-nix-pkgs";
  inputs."pfring-0_0_3".ref   = "master";
  inputs."pfring-0_0_3".repo  = "pfring";
  inputs."pfring-0_0_3".type  = "github";
  inputs."pfring-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pfring-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
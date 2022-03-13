{
  description = ''Graph data structure library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."patgraph-master".dir   = "master";
  inputs."patgraph-master".owner = "nim-nix-pkgs";
  inputs."patgraph-master".ref   = "master";
  inputs."patgraph-master".repo  = "patgraph";
  inputs."patgraph-master".type  = "github";
  inputs."patgraph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patgraph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patgraph-v0_1_0".dir   = "v0_1_0";
  inputs."patgraph-v0_1_0".owner = "nim-nix-pkgs";
  inputs."patgraph-v0_1_0".ref   = "master";
  inputs."patgraph-v0_1_0".repo  = "patgraph";
  inputs."patgraph-v0_1_0".type  = "github";
  inputs."patgraph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patgraph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patgraph-v0_2_0".dir   = "v0_2_0";
  inputs."patgraph-v0_2_0".owner = "nim-nix-pkgs";
  inputs."patgraph-v0_2_0".ref   = "master";
  inputs."patgraph-v0_2_0".repo  = "patgraph";
  inputs."patgraph-v0_2_0".type  = "github";
  inputs."patgraph-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patgraph-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
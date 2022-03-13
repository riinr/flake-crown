{
  description = ''A* Pathfinding'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."astar-master".dir   = "master";
  inputs."astar-master".owner = "nim-nix-pkgs";
  inputs."astar-master".ref   = "master";
  inputs."astar-master".repo  = "astar";
  inputs."astar-master".type  = "github";
  inputs."astar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."astar-0_2_0".dir   = "0_2_0";
  inputs."astar-0_2_0".owner = "nim-nix-pkgs";
  inputs."astar-0_2_0".ref   = "master";
  inputs."astar-0_2_0".repo  = "astar";
  inputs."astar-0_2_0".type  = "github";
  inputs."astar-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astar-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."astar-0_3_0".dir   = "0_3_0";
  inputs."astar-0_3_0".owner = "nim-nix-pkgs";
  inputs."astar-0_3_0".ref   = "master";
  inputs."astar-0_3_0".repo  = "astar";
  inputs."astar-0_3_0".type  = "github";
  inputs."astar-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astar-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."astar-0_4_0".dir   = "0_4_0";
  inputs."astar-0_4_0".owner = "nim-nix-pkgs";
  inputs."astar-0_4_0".ref   = "master";
  inputs."astar-0_4_0".repo  = "astar";
  inputs."astar-0_4_0".type  = "github";
  inputs."astar-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astar-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."astar-0_6_0".dir   = "0_6_0";
  inputs."astar-0_6_0".owner = "nim-nix-pkgs";
  inputs."astar-0_6_0".ref   = "master";
  inputs."astar-0_6_0".repo  = "astar";
  inputs."astar-0_6_0".type  = "github";
  inputs."astar-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astar-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
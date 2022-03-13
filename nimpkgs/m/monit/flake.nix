{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."monit-master".dir   = "master";
  inputs."monit-master".owner = "nim-nix-pkgs";
  inputs."monit-master".ref   = "master";
  inputs."monit-master".repo  = "monit";
  inputs."monit-master".type  = "github";
  inputs."monit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-1_0_0".dir   = "1_0_0";
  inputs."monit-1_0_0".owner = "nim-nix-pkgs";
  inputs."monit-1_0_0".ref   = "master";
  inputs."monit-1_0_0".repo  = "monit";
  inputs."monit-1_0_0".type  = "github";
  inputs."monit-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-1_1_0".dir   = "1_1_0";
  inputs."monit-1_1_0".owner = "nim-nix-pkgs";
  inputs."monit-1_1_0".ref   = "master";
  inputs."monit-1_1_0".repo  = "monit";
  inputs."monit-1_1_0".type  = "github";
  inputs."monit-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_0".dir   = "v1_2_0";
  inputs."monit-v1_2_0".owner = "nim-nix-pkgs";
  inputs."monit-v1_2_0".ref   = "master";
  inputs."monit-v1_2_0".repo  = "monit";
  inputs."monit-v1_2_0".type  = "github";
  inputs."monit-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_1".dir   = "v1_2_1";
  inputs."monit-v1_2_1".owner = "nim-nix-pkgs";
  inputs."monit-v1_2_1".ref   = "master";
  inputs."monit-v1_2_1".repo  = "monit";
  inputs."monit-v1_2_1".type  = "github";
  inputs."monit-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_2".dir   = "v1_2_2";
  inputs."monit-v1_2_2".owner = "nim-nix-pkgs";
  inputs."monit-v1_2_2".ref   = "master";
  inputs."monit-v1_2_2".repo  = "monit";
  inputs."monit-v1_2_2".type  = "github";
  inputs."monit-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."monit-v1_2_3".dir   = "v1_2_3";
  inputs."monit-v1_2_3".owner = "nim-nix-pkgs";
  inputs."monit-v1_2_3".ref   = "master";
  inputs."monit-v1_2_3".repo  = "monit";
  inputs."monit-v1_2_3".type  = "github";
  inputs."monit-v1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."monit-v1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
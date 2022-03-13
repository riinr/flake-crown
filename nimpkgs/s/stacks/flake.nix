{
  description = ''Pure Nim stack implementation based on sequences.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stacks-master".dir   = "master";
  inputs."stacks-master".owner = "nim-nix-pkgs";
  inputs."stacks-master".ref   = "master";
  inputs."stacks-master".repo  = "stacks";
  inputs."stacks-master".type  = "github";
  inputs."stacks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stacks-0_4_0".dir   = "0_4_0";
  inputs."stacks-0_4_0".owner = "nim-nix-pkgs";
  inputs."stacks-0_4_0".ref   = "master";
  inputs."stacks-0_4_0".repo  = "stacks";
  inputs."stacks-0_4_0".type  = "github";
  inputs."stacks-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stacks-0_4_1".dir   = "0_4_1";
  inputs."stacks-0_4_1".owner = "nim-nix-pkgs";
  inputs."stacks-0_4_1".ref   = "master";
  inputs."stacks-0_4_1".repo  = "stacks";
  inputs."stacks-0_4_1".type  = "github";
  inputs."stacks-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stacks-0_4_2".dir   = "0_4_2";
  inputs."stacks-0_4_2".owner = "nim-nix-pkgs";
  inputs."stacks-0_4_2".ref   = "master";
  inputs."stacks-0_4_2".repo  = "stacks";
  inputs."stacks-0_4_2".type  = "github";
  inputs."stacks-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stacks-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Nim wrapper of the tree-sitter incremental parsing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."treesitter-master".dir   = "master";
  inputs."treesitter-master".owner = "nim-nix-pkgs";
  inputs."treesitter-master".ref   = "master";
  inputs."treesitter-master".repo  = "treesitter";
  inputs."treesitter-master".type  = "github";
  inputs."treesitter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter-v0_1_0".dir   = "v0_1_0";
  inputs."treesitter-v0_1_0".owner = "nim-nix-pkgs";
  inputs."treesitter-v0_1_0".ref   = "master";
  inputs."treesitter-v0_1_0".repo  = "treesitter";
  inputs."treesitter-v0_1_0".type  = "github";
  inputs."treesitter-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter-v0_1_1".dir   = "v0_1_1";
  inputs."treesitter-v0_1_1".owner = "nim-nix-pkgs";
  inputs."treesitter-v0_1_1".ref   = "master";
  inputs."treesitter-v0_1_1".repo  = "treesitter";
  inputs."treesitter-v0_1_1".type  = "github";
  inputs."treesitter-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
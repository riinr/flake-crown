{
  description = ''Nim wrapper for CSS language support within tree-sitter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."treesitter_css-master".dir   = "master";
  inputs."treesitter_css-master".owner = "nim-nix-pkgs";
  inputs."treesitter_css-master".ref   = "master";
  inputs."treesitter_css-master".repo  = "treesitter_css";
  inputs."treesitter_css-master".type  = "github";
  inputs."treesitter_css-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter_css-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter_css-v0_1_0".dir   = "v0_1_0";
  inputs."treesitter_css-v0_1_0".owner = "nim-nix-pkgs";
  inputs."treesitter_css-v0_1_0".ref   = "master";
  inputs."treesitter_css-v0_1_0".repo  = "treesitter_css";
  inputs."treesitter_css-v0_1_0".type  = "github";
  inputs."treesitter_css-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter_css-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter_css-v0_1_1".dir   = "v0_1_1";
  inputs."treesitter_css-v0_1_1".owner = "nim-nix-pkgs";
  inputs."treesitter_css-v0_1_1".ref   = "master";
  inputs."treesitter_css-v0_1_1".repo  = "treesitter_css";
  inputs."treesitter_css-v0_1_1".type  = "github";
  inputs."treesitter_css-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter_css-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
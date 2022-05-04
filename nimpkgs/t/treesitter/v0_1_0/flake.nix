{
  description = ''tree-sitter wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-treesitter-v0_1_0.flake = false;
  inputs.src-treesitter-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-treesitter-v0_1_0.owner = "genotrance";
  inputs.src-treesitter-v0_1_0.repo  = "nimtreesitter";
    inputs.src-treesitter-v0_1_0.dir   = "treesitter";
inputs.src-treesitter-v0_1_0.type  = "github";
  
  inputs."nimgen".owner = "nim-nix-pkgs";
  inputs."nimgen".ref   = "master";
  inputs."nimgen".repo  = "nimgen";
  inputs."nimgen".dir   = "v0_5_1";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-treesitter-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-treesitter-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
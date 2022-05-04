{
  description = ''tree-sitter-java wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-treesitter_java-master.flake = false;
  inputs.src-treesitter_java-master.ref   = "refs/heads/master";
  inputs.src-treesitter_java-master.owner = "genotrance";
  inputs.src-treesitter_java-master.repo  = "nimtreesitter";
    inputs.src-treesitter_java-master.dir   = "treesitter_java";
inputs.src-treesitter_java-master.type  = "github";
  
  inputs."nimgen".owner = "nim-nix-pkgs";
  inputs."nimgen".ref   = "master";
  inputs."nimgen".repo  = "nimgen";
  inputs."nimgen".dir   = "v0_5_1";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter".owner = "nim-nix-pkgs";
  inputs."treesitter".ref   = "master";
  inputs."treesitter".repo  = "treesitter";
  inputs."treesitter".dir   = "v0_1_1";
  inputs."treesitter".type  = "github";
  inputs."treesitter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-treesitter_java-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-treesitter_java-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''Fonts, Typesetting and Rasterization for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-typography-0_3_1.flake = false;
  inputs.src-typography-0_3_1.ref   = "refs/tags/0.3.1";
  inputs.src-typography-0_3_1.owner = "treeform";
  inputs.src-typography-0_3_1.repo  = "typography";
  inputs.src-typography-0_3_1.type  = "github";
  
  inputs."flippy".owner = "nim-nix-pkgs";
  inputs."flippy".ref   = "master";
  inputs."flippy".repo  = "flippy";
  inputs."flippy".dir   = "0_4_7";
  inputs."flippy".type  = "github";
  inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".dir   = "1_1_4";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_6";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print".owner = "nim-nix-pkgs";
  inputs."print".ref   = "master";
  inputs."print".repo  = "print";
  inputs."print".dir   = "1_0_2";
  inputs."print".type  = "github";
  inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_3_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-typography-0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
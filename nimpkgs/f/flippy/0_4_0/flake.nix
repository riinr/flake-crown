{
  description = ''Flippy is a simple 2d image and drawing library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-flippy-0_4_0.flake = false;
  inputs.src-flippy-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-flippy-0_4_0.owner = "treeform";
  inputs.src-flippy-0_4_0.repo  = "flippy";
  inputs.src-flippy-0_4_0.type  = "github";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".dir   = "1_1_2";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_5";
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
  
  inputs."stb_image".owner = "nim-nix-pkgs";
  inputs."stb_image".ref   = "master";
  inputs."stb_image".repo  = "stb_image";
  inputs."stb_image".dir   = "2_5";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-flippy-0_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-flippy-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''Fonts, Typesetting and Rasterization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-typography-0_3_3.flake = false;
  inputs.src-typography-0_3_3.owner = "treeform";
  inputs.src-typography-0_3_3.ref   = "refs/tags/0.3.3";
  inputs.src-typography-0_3_3.repo  = "typography";
  inputs.src-typography-0_3_3.type  = "github";
  
  inputs."flippy".owner = "nim-nix-pkgs";
  inputs."flippy".ref   = "master";
  inputs."flippy".repo  = "flippy";
  inputs."flippy".type  = "github";
  inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".owner = "nim-nix-pkgs";
  inputs."vmath".ref   = "master";
  inputs."vmath".repo  = "vmath";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print".owner = "nim-nix-pkgs";
  inputs."print".ref   = "master";
  inputs."print".repo  = "print";
  inputs."print".type  = "github";
  inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_3_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-typography-0_3_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
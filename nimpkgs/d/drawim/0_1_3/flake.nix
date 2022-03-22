{
  description = ''Simple library to draw stuff on a window'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drawim-0_1_3.flake = false;
  inputs.src-drawim-0_1_3.owner = "GabrielLasso";
  inputs.src-drawim-0_1_3.ref   = "0_1_3";
  inputs.src-drawim-0_1_3.repo  = "drawim";
  inputs.src-drawim-0_1_3.type  = "github";
  
  inputs."staticglfw".owner = "nim-nix-pkgs";
  inputs."staticglfw".ref   = "master";
  inputs."staticglfw".repo  = "staticglfw";
  inputs."staticglfw".dir   = "4_1_3";
  inputs."staticglfw".type  = "github";
  inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".dir   = "1_2_6";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jscanvas".owner = "nim-nix-pkgs";
  inputs."jscanvas".ref   = "master";
  inputs."jscanvas".repo  = "jscanvas";
  inputs."jscanvas".dir   = "v0_1_0";
  inputs."jscanvas".type  = "github";
  inputs."jscanvas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jscanvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drawim-0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drawim-0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
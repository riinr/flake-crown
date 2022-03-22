{
  description = ''Simple library to draw stuff on a window'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drawim-0_1_0.flake = false;
  inputs.src-drawim-0_1_0.owner = "GabrielLasso";
  inputs.src-drawim-0_1_0.ref   = "0_1_0";
  inputs.src-drawim-0_1_0.repo  = "drawim";
  inputs.src-drawim-0_1_0.type  = "github";
  
  inputs."staticglfw".owner = "nim-nix-pkgs";
  inputs."staticglfw".ref   = "master";
  inputs."staticglfw".repo  = "staticglfw";
  inputs."staticglfw".dir   = "4_1_3";
  inputs."staticglfw".type  = "github";
  inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drawim-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drawim-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
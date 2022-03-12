{
  description = ''Simple library to draw stuff on a window'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drawim-master.flake = false;
  inputs.src-drawim-master.owner = "GabrielLasso";
  inputs.src-drawim-master.ref   = "refs/heads/master";
  inputs.src-drawim-master.repo  = "drawim";
  inputs.src-drawim-master.type  = "github";
  
  inputs."staticglfw".dir   = "nimpkgs/s/staticglfw";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".ref   = "flake-pinning";
  inputs."staticglfw".repo  = "flake-nimble";
  inputs."staticglfw".type  = "github";
  inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".dir   = "nimpkgs/o/opengl";
  inputs."opengl".owner = "riinr";
  inputs."opengl".ref   = "flake-pinning";
  inputs."opengl".repo  = "flake-nimble";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jscanvas".dir   = "nimpkgs/j/jscanvas";
  inputs."jscanvas".owner = "riinr";
  inputs."jscanvas".ref   = "flake-pinning";
  inputs."jscanvas".repo  = "flake-nimble";
  inputs."jscanvas".type  = "github";
  inputs."jscanvas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jscanvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drawim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drawim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
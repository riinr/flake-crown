{
  description = ''High-level and low-level wrapper for OpenGL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opengl-1_2_6.flake = false;
  inputs.src-opengl-1_2_6.owner = "nim-lang";
  inputs.src-opengl-1_2_6.ref   = "refs/tags/1.2.6";
  inputs.src-opengl-1_2_6.repo  = "opengl";
  inputs.src-opengl-1_2_6.type  = "github";
  
  inputs."x11".dir   = "nimpkgs/x/x11";
  inputs."x11".owner = "riinr";
  inputs."x11".ref   = "flake-pinning";
  inputs."x11".repo  = "flake-nimble";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opengl-1_2_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opengl-1_2_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''2D GPU rendering with a tiling atlas.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-boxy-0_2_0.flake = false;
  inputs.src-boxy-0_2_0.owner = "treeform";
  inputs.src-boxy-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-boxy-0_2_0.repo  = "boxy";
  inputs.src-boxy-0_2_0.type  = "github";
  
  inputs."pixie".dir   = "nimpkgs/p/pixie";
  inputs."pixie".owner = "riinr";
  inputs."pixie".ref   = "flake-pinning";
  inputs."pixie".repo  = "flake-nimble";
  inputs."pixie".type  = "github";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".dir   = "nimpkgs/o/opengl";
  inputs."opengl".owner = "riinr";
  inputs."opengl".ref   = "flake-pinning";
  inputs."opengl".repo  = "flake-nimble";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bitty".dir   = "nimpkgs/b/bitty";
  inputs."bitty".owner = "riinr";
  inputs."bitty".ref   = "flake-pinning";
  inputs."bitty".repo  = "flake-nimble";
  inputs."bitty".type  = "github";
  inputs."bitty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bitty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-boxy-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-boxy-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Full-featured 2d graphics library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pixie-0_0_3.flake = false;
  inputs.src-pixie-0_0_3.owner = "treeform";
  inputs.src-pixie-0_0_3.ref   = "refs/tags/0.0.3";
  inputs.src-pixie-0_0_3.repo  = "pixie";
  inputs.src-pixie-0_0_3.type  = "github";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".dir   = "nimpkgs/f/flatty";
  inputs."flatty".owner = "riinr";
  inputs."flatty".ref   = "flake-pinning";
  inputs."flatty".repo  = "flake-nimble";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pixie-0_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pixie-0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
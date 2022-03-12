{
  description = ''Fonts, Typesetting and Rasterization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-typography-0_6_0.flake = false;
  inputs.src-typography-0_6_0.owner = "treeform";
  inputs.src-typography-0_6_0.ref   = "refs/tags/0.6.0";
  inputs.src-typography-0_6_0.repo  = "typography";
  inputs.src-typography-0_6_0.type  = "github";
  
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
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print".dir   = "nimpkgs/p/print";
  inputs."print".owner = "riinr";
  inputs."print".ref   = "flake-pinning";
  inputs."print".repo  = "flake-nimble";
  inputs."print".type  = "github";
  inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-typography-0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
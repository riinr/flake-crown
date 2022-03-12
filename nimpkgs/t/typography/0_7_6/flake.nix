{
  description = ''Fonts, Typesetting and Rasterization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-typography-0_7_6.flake = false;
  inputs.src-typography-0_7_6.owner = "treeform";
  inputs.src-typography-0_7_6.ref   = "refs/tags/0.7.6";
  inputs.src-typography-0_7_6.repo  = "typography";
  inputs.src-typography-0_7_6.type  = "github";
  
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
  
  inputs."bumpy".dir   = "nimpkgs/b/bumpy";
  inputs."bumpy".owner = "riinr";
  inputs."bumpy".ref   = "flake-pinning";
  inputs."bumpy".repo  = "flake-nimble";
  inputs."bumpy".type  = "github";
  inputs."bumpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bumpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-typography-0_7_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-typography-0_7_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
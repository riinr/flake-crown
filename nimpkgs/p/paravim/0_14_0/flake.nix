{
  description = ''An embedded text editor for paranim games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paravim-0_14_0.flake = false;
  inputs.src-paravim-0_14_0.owner = "paranim";
  inputs.src-paravim-0_14_0.ref   = "refs/tags/0.14.0";
  inputs.src-paravim-0_14_0.repo  = "paravim";
  inputs.src-paravim-0_14_0.type  = "github";
  
  inputs."paranim".dir   = "nimpkgs/p/paranim";
  inputs."paranim".owner = "riinr";
  inputs."paranim".ref   = "flake-pinning";
  inputs."paranim".repo  = "flake-nimble";
  inputs."paranim".type  = "github";
  inputs."paranim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules".dir   = "nimpkgs/p/pararules";
  inputs."pararules".owner = "riinr";
  inputs."pararules".ref   = "flake-pinning";
  inputs."pararules".repo  = "flake-nimble";
  inputs."pararules".type  = "github";
  inputs."pararules".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext".dir   = "nimpkgs/p/paratext";
  inputs."paratext".owner = "riinr";
  inputs."paratext".ref   = "flake-pinning";
  inputs."paratext".repo  = "flake-nimble";
  inputs."paratext".type  = "github";
  inputs."paratext".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paravim-0_14_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paravim-0_14_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
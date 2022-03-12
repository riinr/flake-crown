{
  description = ''An embedded text editor for paranim games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paravim-0_18_2.flake = false;
  inputs.src-paravim-0_18_2.owner = "paranim";
  inputs.src-paravim-0_18_2.ref   = "refs/tags/0.18.2";
  inputs.src-paravim-0_18_2.repo  = "paravim";
  inputs.src-paravim-0_18_2.type  = "github";
  
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
  
  inputs."illwill".dir   = "nimpkgs/i/illwill";
  inputs."illwill".owner = "riinr";
  inputs."illwill".ref   = "flake-pinning";
  inputs."illwill".repo  = "flake-nimble";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paravim-0_18_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-paravim-0_18_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
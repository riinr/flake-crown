{
  description = ''A symbolic library written purely in Nim with the ability to compile expressions into efficient functions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-symbolicnim-v0_2_3.flake = false;
  inputs.src-symbolicnim-v0_2_3.owner = "HugoGranstrom";
  inputs.src-symbolicnim-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-symbolicnim-v0_2_3.repo  = "symbolicnim";
  inputs.src-symbolicnim-v0_2_3.type  = "github";
  
  inputs."arraymancer".dir   = "nimpkgs/a/arraymancer";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".ref   = "flake-pinning";
  inputs."arraymancer".repo  = "flake-nimble";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."terminaltables".dir   = "nimpkgs/t/terminaltables";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".ref   = "flake-pinning";
  inputs."terminaltables".repo  = "flake-nimble";
  inputs."terminaltables".type  = "github";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-symbolicnim-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-symbolicnim-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
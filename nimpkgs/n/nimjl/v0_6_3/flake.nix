{
  description = ''Nim Julia bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimjl-v0_6_3.flake = false;
  inputs.src-nimjl-v0_6_3.owner = "Clonkk";
  inputs.src-nimjl-v0_6_3.ref   = "refs/tags/v0.6.3";
  inputs.src-nimjl-v0_6_3.repo  = "nimjl";
  inputs.src-nimjl-v0_6_3.type  = "github";
  
  inputs."arraymancer".dir   = "nimpkgs/a/arraymancer";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".ref   = "flake-pinning";
  inputs."arraymancer".repo  = "flake-nimble";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimjl-v0_6_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimjl-v0_6_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
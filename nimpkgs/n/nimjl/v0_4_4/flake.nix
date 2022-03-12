{
  description = ''Nim Julia bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimjl-v0_4_4.flake = false;
  inputs.src-nimjl-v0_4_4.owner = "Clonkk";
  inputs.src-nimjl-v0_4_4.ref   = "refs/tags/v0.4.4";
  inputs.src-nimjl-v0_4_4.repo  = "nimjl";
  inputs.src-nimjl-v0_4_4.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimjl-v0_4_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimjl-v0_4_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
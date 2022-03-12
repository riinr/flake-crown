{
  description = ''The core types and functions of the SciNim ecosystem'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scinim-v0_1_0.flake = false;
  inputs.src-scinim-v0_1_0.owner = "SciNim";
  inputs.src-scinim-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-scinim-v0_1_0.repo  = "scinim";
  inputs.src-scinim-v0_1_0.type  = "github";
  
  inputs."arraymancer".dir   = "nimpkgs/a/arraymancer";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".ref   = "flake-pinning";
  inputs."arraymancer".repo  = "flake-nimble";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polynumeric".dir   = "nimpkgs/p/polynumeric";
  inputs."polynumeric".owner = "riinr";
  inputs."polynumeric".ref   = "flake-pinning";
  inputs."polynumeric".repo  = "flake-nimble";
  inputs."polynumeric".type  = "github";
  inputs."polynumeric".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polynumeric".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scinim-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-scinim-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
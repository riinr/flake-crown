{
  description = ''The core types and functions of the SciNim ecosystem'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scinim-v0_2_3.flake = false;
  inputs.src-scinim-v0_2_3.owner = "SciNim";
  inputs.src-scinim-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-scinim-v0_2_3.repo  = "scinim";
  inputs.src-scinim-v0_2_3.type  = "github";
  
  inputs."fusion".dir   = "nimpkgs/f/fusion";
  inputs."fusion".owner = "riinr";
  inputs."fusion".ref   = "flake-pinning";
  inputs."fusion".repo  = "flake-nimble";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."nimpy".dir   = "nimpkgs/n/nimpy";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".ref   = "flake-pinning";
  inputs."nimpy".repo  = "flake-nimble";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scinim-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-scinim-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
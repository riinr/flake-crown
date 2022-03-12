{
  description = ''Preserves data model and serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-preserves-v0_2_0.flake = false;
  inputs.src-preserves-v0_2_0.owner = "~ehmry";
  inputs.src-preserves-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-preserves-v0_2_0.repo  = "preserves-nim";
  inputs.src-preserves-v0_2_0.type  = "other";
  
  inputs."bigints".dir   = "nimpkgs/b/bigints";
  inputs."bigints".owner = "riinr";
  inputs."bigints".ref   = "flake-pinning";
  inputs."bigints".repo  = "flake-nimble";
  inputs."bigints".type  = "github";
  inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-preserves-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-preserves-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
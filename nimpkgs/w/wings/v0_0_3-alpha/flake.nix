{
  description = ''A simple cross language struct and enum file generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wings-v0_0_3-alpha.flake = false;
  inputs.src-wings-v0_0_3-alpha.owner = "binhonglee";
  inputs.src-wings-v0_0_3-alpha.ref   = "refs/tags/v0.0.3-alpha";
  inputs.src-wings-v0_0_3-alpha.repo  = "wings";
  inputs.src-wings-v0_0_3-alpha.type  = "github";
  
  inputs."stones".dir   = "nimpkgs/s/stones";
  inputs."stones".owner = "riinr";
  inputs."stones".ref   = "flake-pinning";
  inputs."stones".repo  = "flake-nimble";
  inputs."stones".type  = "github";
  inputs."stones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wings-v0_0_3-alpha"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wings-v0_0_3-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
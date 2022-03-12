{
  description = ''OAuth library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oauth-v0_5.flake = false;
  inputs.src-oauth-v0_5.owner = "CORDEA";
  inputs.src-oauth-v0_5.ref   = "refs/tags/v0.5";
  inputs.src-oauth-v0_5.repo  = "oauth";
  inputs.src-oauth-v0_5.type  = "github";
  
  inputs."sha1".dir   = "nimpkgs/s/sha1";
  inputs."sha1".owner = "riinr";
  inputs."sha1".ref   = "flake-pinning";
  inputs."sha1".repo  = "flake-nimble";
  inputs."sha1".type  = "github";
  inputs."sha1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oauth-v0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oauth-v0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
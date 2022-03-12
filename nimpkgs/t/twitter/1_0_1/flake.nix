{
  description = ''Low-level twitter API wrapper library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-twitter-1_0_1.flake = false;
  inputs.src-twitter-1_0_1.owner = "snus-kin";
  inputs.src-twitter-1_0_1.ref   = "refs/tags/1.0.1";
  inputs.src-twitter-1_0_1.repo  = "twitter.nim";
  inputs.src-twitter-1_0_1.type  = "github";
  
  inputs."uuids".dir   = "nimpkgs/u/uuids";
  inputs."uuids".owner = "riinr";
  inputs."uuids".ref   = "flake-pinning";
  inputs."uuids".repo  = "flake-nimble";
  inputs."uuids".type  = "github";
  inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac".dir   = "nimpkgs/h/hmac";
  inputs."hmac".owner = "riinr";
  inputs."hmac".ref   = "flake-pinning";
  inputs."hmac".repo  = "flake-nimble";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-twitter-1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-twitter-1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Low-level twitter API wrapper library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-twitter-master.flake = false;
  inputs.src-twitter-master.owner = "snus-kin";
  inputs.src-twitter-master.ref   = "refs/heads/master";
  inputs.src-twitter-master.repo  = "twitter.nim";
  inputs.src-twitter-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-twitter-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-twitter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
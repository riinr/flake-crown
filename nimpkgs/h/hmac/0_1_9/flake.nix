{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmac-0_1_9.flake = false;
  inputs.src-hmac-0_1_9.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_9.ref   = "refs/tags/0.1.9";
  inputs.src-hmac-0_1_9.repo  = "hmac.nim";
  inputs.src-hmac-0_1_9.type  = "github";
  
  inputs."nimsha2".dir   = "nimpkgs/n/nimsha2";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".ref   = "flake-pinning";
  inputs."nimsha2".repo  = "flake-nimble";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmac-0_1_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmac-0_1_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''HMAC-SHA1 and HMAC-MD5 hashing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmac-0_1_8.flake = false;
  inputs.src-hmac-0_1_8.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_8.ref   = "refs/tags/0.1.8";
  inputs.src-hmac-0_1_8.repo  = "hmac.nim";
  inputs.src-hmac-0_1_8.type  = "github";
  
  inputs."nimsha2".dir   = "nimpkgs/n/nimsha2";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".ref   = "flake-pinning";
  inputs."nimsha2".repo  = "flake-nimble";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmac-0_1_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmac-0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Nim-SMBExec - SMBExec implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-SMBExec-master.flake = false;
  inputs.src-SMBExec-master.owner = "elddy";
  inputs.src-SMBExec-master.ref   = "refs/heads/master";
  inputs.src-SMBExec-master.repo  = "SMB-Nim";
  inputs.src-SMBExec-master.type  = "github";
  
  inputs."hashlib".dir   = "nimpkgs/h/hashlib";
  inputs."hashlib".owner = "riinr";
  inputs."hashlib".ref   = "flake-pinning";
  inputs."hashlib".repo  = "flake-nimble";
  inputs."hashlib".type  = "github";
  inputs."hashlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac".dir   = "nimpkgs/h/hmac";
  inputs."hmac".owner = "riinr";
  inputs."hmac".ref   = "flake-pinning";
  inputs."hmac".repo  = "flake-nimble";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-SMBExec-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-SMBExec-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Nim-SMBExec - SMBExec implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-SMBExec-master.flake = false;
  inputs.src-SMBExec-master.ref   = "refs/heads/master";
  inputs.src-SMBExec-master.owner = "elddy";
  inputs.src-SMBExec-master.repo  = "SMB-Nim";
  inputs.src-SMBExec-master.type  = "github";
  
  inputs."hashlib".owner = "nim-nix-pkgs";
  inputs."hashlib".ref   = "master";
  inputs."hashlib".repo  = "hashlib";
  inputs."hashlib".dir   = "master";
  inputs."hashlib".type  = "github";
  inputs."hashlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hashlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmac".owner = "nim-nix-pkgs";
  inputs."hmac".ref   = "master";
  inputs."hmac".repo  = "hmac";
  inputs."hmac".dir   = "0_2_0";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_20_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-SMBExec-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-SMBExec-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
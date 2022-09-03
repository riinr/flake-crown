{
  description = ''Simple Serialize (SSZ) serialization and merkleization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ssz_serialization-master.flake = false;
  inputs.src-ssz_serialization-master.ref   = "refs/heads/master";
  inputs.src-ssz_serialization-master.owner = "status-im";
  inputs.src-ssz_serialization-master.repo  = "nim-ssz-serialization";
  inputs.src-ssz_serialization-master.type  = "github";
  
  inputs."serialization".owner = "nim-nix-pkgs";
  inputs."serialization".ref   = "master";
  inputs."serialization".repo  = "serialization";
  inputs."serialization".dir   = "source";
  inputs."serialization".type  = "github";
  inputs."serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".owner = "nim-nix-pkgs";
  inputs."json_serialization".ref   = "master";
  inputs."json_serialization".repo  = "json_serialization";
  inputs."json_serialization".dir   = "master";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "source";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "source";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blscurve".owner = "nim-nix-pkgs";
  inputs."blscurve".ref   = "master";
  inputs."blscurve".repo  = "blscurve";
  inputs."blscurve".dir   = "source";
  inputs."blscurve".type  = "github";
  inputs."blscurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blscurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2".owner = "nim-nix-pkgs";
  inputs."unittest2".ref   = "master";
  inputs."unittest2".repo  = "unittest2";
  inputs."unittest2".dir   = "v0_0_4";
  inputs."unittest2".type  = "github";
  inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ssz_serialization-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ssz_serialization-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
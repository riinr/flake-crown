{
  description = ''An Ethereum 2.0 Sharding Client for Resource-Restricted Devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbus-master.flake = false;
  inputs.src-nimbus-master.ref   = "refs/heads/master";
  inputs.src-nimbus-master.owner = "status-im";
  inputs.src-nimbus-master.repo  = "nimbus";
  inputs.src-nimbus-master.type  = "github";
  
  inputs."bncurve".owner = "nim-nix-pkgs";
  inputs."bncurve".ref   = "master";
  inputs."bncurve".repo  = "bncurve";
  inputs."bncurve".dir   = "master";
  inputs."bncurve".type  = "github";
  inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".dir   = "v0_10_2";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".dir   = "master";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eth".owner = "nim-nix-pkgs";
  inputs."eth".ref   = "master";
  inputs."eth".repo  = "eth";
  inputs."eth".dir   = "master";
  inputs."eth".type  = "github";
  inputs."eth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_rpc".owner = "nim-nix-pkgs";
  inputs."json_rpc".ref   = "master";
  inputs."json_rpc".repo  = "json_rpc";
  inputs."json_rpc".dir   = "master";
  inputs."json_rpc".type  = "github";
  inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libbacktrace".owner = "nim-nix-pkgs";
  inputs."libbacktrace".ref   = "master";
  inputs."libbacktrace".repo  = "libbacktrace";
  inputs."libbacktrace".dir   = "v0_0_8";
  inputs."libbacktrace".type  = "github";
  inputs."libbacktrace".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libbacktrace".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "master";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "master";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbus-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimbus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
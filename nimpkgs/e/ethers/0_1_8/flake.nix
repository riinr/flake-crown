{
  description = ''library for interacting with Ethereum'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ethers-0_1_8.flake = false;
  inputs.src-ethers-0_1_8.ref   = "refs/tags/0.1.8";
  inputs.src-ethers-0_1_8.owner = "status-im";
  inputs.src-ethers-0_1_8.repo  = "nim-ethers";
  inputs.src-ethers-0_1_8.type  = "github";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".dir   = "source";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi".owner = "nim-nix-pkgs";
  inputs."contractabi".ref   = "master";
  inputs."contractabi".repo  = "contractabi";
  inputs."contractabi".dir   = "0_4_5";
  inputs."contractabi".type  = "github";
  inputs."contractabi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."questionable".owner = "nim-nix-pkgs";
  inputs."questionable".ref   = "master";
  inputs."questionable".repo  = "questionable";
  inputs."questionable".dir   = "0_10_5";
  inputs."questionable".type  = "github";
  inputs."questionable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."questionable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."upraises".owner = "nim-nix-pkgs";
  inputs."upraises".ref   = "master";
  inputs."upraises".repo  = "upraises";
  inputs."upraises".dir   = "0_1_0";
  inputs."upraises".type  = "github";
  inputs."upraises".inputs.nixpkgs.follows = "nixpkgs";
  inputs."upraises".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_rpc".owner = "nim-nix-pkgs";
  inputs."json_rpc".ref   = "master";
  inputs."json_rpc".repo  = "json_rpc";
  inputs."json_rpc".dir   = "master";
  inputs."json_rpc".type  = "github";
  inputs."json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "source";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "source";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ethers-0_1_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ethers-0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
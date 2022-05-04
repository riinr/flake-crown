{
  description = ''Async MySQL Connector write in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-amysql-v0_7_1.flake = false;
  inputs.src-amysql-v0_7_1.ref   = "refs/tags/v0.7.1";
  inputs.src-amysql-v0_7_1.owner = "bung87";
  inputs.src-amysql-v0_7_1.repo  = "amysql";
  inputs.src-amysql-v0_7_1.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_19_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/bung87/zstd".owner = "nim-nix-pkgs";
  inputs."github.com/bung87/zstd".ref   = "master";
  inputs."github.com/bung87/zstd".repo  = "github.com/bung87/zstd";
  inputs."github.com/bung87/zstd".dir   = "";
  inputs."github.com/bung87/zstd".type  = "github";
  inputs."github.com/bung87/zstd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/bung87/zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly".owner = "nim-nix-pkgs";
  inputs."urlly".ref   = "master";
  inputs."urlly".repo  = "urlly";
  inputs."urlly".dir   = "1_0_0";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".dir   = "master";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_7_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-amysql-v0_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
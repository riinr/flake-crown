{
  description = ''Async MySQL Connector write in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-amysql-v0_7_5.flake = false;
  inputs.src-amysql-v0_7_5.owner = "bung87";
  inputs.src-amysql-v0_7_5.ref   = "refs/tags/v0.7.5";
  inputs.src-amysql-v0_7_5.repo  = "amysql";
  inputs.src-amysql-v0_7_5.type  = "github";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd".dir   = "nimpkgs/z/zstd";
  inputs."zstd".owner = "riinr";
  inputs."zstd".ref   = "flake-pinning";
  inputs."zstd".repo  = "flake-nimble";
  inputs."zstd".type  = "github";
  inputs."zstd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."urlly".dir   = "nimpkgs/u/urlly";
  inputs."urlly".owner = "riinr";
  inputs."urlly".ref   = "flake-pinning";
  inputs."urlly".repo  = "flake-nimble";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".dir   = "nimpkgs/c/chronos";
  inputs."chronos".owner = "riinr";
  inputs."chronos".ref   = "flake-pinning";
  inputs."chronos".repo  = "flake-nimble";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_7_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-amysql-v0_7_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
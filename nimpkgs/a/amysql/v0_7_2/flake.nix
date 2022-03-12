{
  description = ''Async MySQL Connector write in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-amysql-v0_7_2.flake = false;
  inputs.src-amysql-v0_7_2.owner = "bung87";
  inputs.src-amysql-v0_7_2.ref   = "refs/tags/v0.7.2";
  inputs.src-amysql-v0_7_2.repo  = "amysql";
  inputs.src-amysql-v0_7_2.type  = "github";
  
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
  
  inputs."https://github.com/bung87/zstd".dir   = "nimpkgs/h/https://github.com/bung87/zstd";
  inputs."https://github.com/bung87/zstd".owner = "riinr";
  inputs."https://github.com/bung87/zstd".ref   = "flake-pinning";
  inputs."https://github.com/bung87/zstd".repo  = "flake-nimble";
  inputs."https://github.com/bung87/zstd".type  = "github";
  inputs."https://github.com/bung87/zstd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/bung87/zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/treeform/urlly".dir   = "nimpkgs/h/https://github.com/treeform/urlly";
  inputs."https://github.com/treeform/urlly".owner = "riinr";
  inputs."https://github.com/treeform/urlly".ref   = "flake-pinning";
  inputs."https://github.com/treeform/urlly".repo  = "flake-nimble";
  inputs."https://github.com/treeform/urlly".type  = "github";
  inputs."https://github.com/treeform/urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/treeform/urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_7_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-amysql-v0_7_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
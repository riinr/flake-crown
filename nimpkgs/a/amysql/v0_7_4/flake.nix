{
  description = ''Async MySQL Connector write in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-amysql-v0_7_4.flake = false;
  inputs.src-amysql-v0_7_4.owner = "bung87";
  inputs.src-amysql-v0_7_4.ref   = "refs/tags/v0.7.4";
  inputs.src-amysql-v0_7_4.repo  = "amysql";
  inputs.src-amysql-v0_7_4.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/bung87/zstd".owner = "nim-nix-pkgs";
  inputs."https://github.com/bung87/zstd".ref   = "master";
  inputs."https://github.com/bung87/zstd".repo  = "https://github.com/bung87/zstd";
  inputs."https://github.com/bung87/zstd".type  = "github";
  inputs."https://github.com/bung87/zstd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/bung87/zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/treeform/urlly".owner = "nim-nix-pkgs";
  inputs."https://github.com/treeform/urlly".ref   = "master";
  inputs."https://github.com/treeform/urlly".repo  = "https://github.com/treeform/urlly";
  inputs."https://github.com/treeform/urlly".type  = "github";
  inputs."https://github.com/treeform/urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/treeform/urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-amysql-v0_7_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-amysql-v0_7_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
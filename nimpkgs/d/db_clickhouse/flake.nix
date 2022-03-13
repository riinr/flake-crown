{
  description = ''ClickHouse Nim interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."db_clickhouse-master".dir   = "master";
  inputs."db_clickhouse-master".owner = "nim-nix-pkgs";
  inputs."db_clickhouse-master".ref   = "master";
  inputs."db_clickhouse-master".repo  = "db_clickhouse";
  inputs."db_clickhouse-master".type  = "github";
  inputs."db_clickhouse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_clickhouse-v0_1_0".dir   = "v0_1_0";
  inputs."db_clickhouse-v0_1_0".owner = "nim-nix-pkgs";
  inputs."db_clickhouse-v0_1_0".ref   = "master";
  inputs."db_clickhouse-v0_1_0".repo  = "db_clickhouse";
  inputs."db_clickhouse-v0_1_0".type  = "github";
  inputs."db_clickhouse-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_clickhouse-v0_2_0".dir   = "v0_2_0";
  inputs."db_clickhouse-v0_2_0".owner = "nim-nix-pkgs";
  inputs."db_clickhouse-v0_2_0".ref   = "master";
  inputs."db_clickhouse-v0_2_0".repo  = "db_clickhouse";
  inputs."db_clickhouse-v0_2_0".type  = "github";
  inputs."db_clickhouse-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_clickhouse-v0_3_0".dir   = "v0_3_0";
  inputs."db_clickhouse-v0_3_0".owner = "nim-nix-pkgs";
  inputs."db_clickhouse-v0_3_0".ref   = "master";
  inputs."db_clickhouse-v0_3_0".repo  = "db_clickhouse";
  inputs."db_clickhouse-v0_3_0".type  = "github";
  inputs."db_clickhouse-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."db_clickhouse-v0_4_0".dir   = "v0_4_0";
  inputs."db_clickhouse-v0_4_0".owner = "nim-nix-pkgs";
  inputs."db_clickhouse-v0_4_0".ref   = "master";
  inputs."db_clickhouse-v0_4_0".repo  = "db_clickhouse";
  inputs."db_clickhouse-v0_4_0".type  = "github";
  inputs."db_clickhouse-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."db_clickhouse-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
{
  description = ''Erlang/Elixir NIFs for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimler-develop".dir   = "develop";
  inputs."nimler-develop".owner = "nim-nix-pkgs";
  inputs."nimler-develop".ref   = "master";
  inputs."nimler-develop".repo  = "nimler";
  inputs."nimler-develop".type  = "github";
  inputs."nimler-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-master".dir   = "master";
  inputs."nimler-master".owner = "nim-nix-pkgs";
  inputs."nimler-master".ref   = "master";
  inputs."nimler-master".repo  = "nimler";
  inputs."nimler-master".type  = "github";
  inputs."nimler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v2_0".dir   = "v2_0";
  inputs."nimler-v2_0".owner = "nim-nix-pkgs";
  inputs."nimler-v2_0".ref   = "master";
  inputs."nimler-v2_0".repo  = "nimler";
  inputs."nimler-v2_0".type  = "github";
  inputs."nimler-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v3_0".dir   = "v3_0";
  inputs."nimler-v3_0".owner = "nim-nix-pkgs";
  inputs."nimler-v3_0".ref   = "master";
  inputs."nimler-v3_0".repo  = "nimler";
  inputs."nimler-v3_0".type  = "github";
  inputs."nimler-v3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v3_1".dir   = "v3_1";
  inputs."nimler-v3_1".owner = "nim-nix-pkgs";
  inputs."nimler-v3_1".ref   = "master";
  inputs."nimler-v3_1".repo  = "nimler";
  inputs."nimler-v3_1".type  = "github";
  inputs."nimler-v3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_0".dir   = "v4_0";
  inputs."nimler-v4_0".owner = "nim-nix-pkgs";
  inputs."nimler-v4_0".ref   = "master";
  inputs."nimler-v4_0".repo  = "nimler";
  inputs."nimler-v4_0".type  = "github";
  inputs."nimler-v4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_1".dir   = "v4_1";
  inputs."nimler-v4_1".owner = "nim-nix-pkgs";
  inputs."nimler-v4_1".ref   = "master";
  inputs."nimler-v4_1".repo  = "nimler";
  inputs."nimler-v4_1".type  = "github";
  inputs."nimler-v4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_2".dir   = "v4_2";
  inputs."nimler-v4_2".owner = "nim-nix-pkgs";
  inputs."nimler-v4_2".ref   = "master";
  inputs."nimler-v4_2".repo  = "nimler";
  inputs."nimler-v4_2".type  = "github";
  inputs."nimler-v4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_3".dir   = "v4_3";
  inputs."nimler-v4_3".owner = "nim-nix-pkgs";
  inputs."nimler-v4_3".ref   = "master";
  inputs."nimler-v4_3".repo  = "nimler";
  inputs."nimler-v4_3".type  = "github";
  inputs."nimler-v4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_4".dir   = "v4_4";
  inputs."nimler-v4_4".owner = "nim-nix-pkgs";
  inputs."nimler-v4_4".ref   = "master";
  inputs."nimler-v4_4".repo  = "nimler";
  inputs."nimler-v4_4".type  = "github";
  inputs."nimler-v4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_5".dir   = "v4_5";
  inputs."nimler-v4_5".owner = "nim-nix-pkgs";
  inputs."nimler-v4_5".ref   = "master";
  inputs."nimler-v4_5".repo  = "nimler";
  inputs."nimler-v4_5".type  = "github";
  inputs."nimler-v4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_6".dir   = "v4_6";
  inputs."nimler-v4_6".owner = "nim-nix-pkgs";
  inputs."nimler-v4_6".ref   = "master";
  inputs."nimler-v4_6".repo  = "nimler";
  inputs."nimler-v4_6".type  = "github";
  inputs."nimler-v4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
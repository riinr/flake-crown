{
  description = ''Read and write to Xiaomi IOT devices.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xiaomi-master".dir   = "master";
  inputs."xiaomi-master".owner = "nim-nix-pkgs";
  inputs."xiaomi-master".ref   = "master";
  inputs."xiaomi-master".repo  = "xiaomi";
  inputs."xiaomi-master".type  = "github";
  inputs."xiaomi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_1".dir   = "v0_1_1";
  inputs."xiaomi-v0_1_1".owner = "nim-nix-pkgs";
  inputs."xiaomi-v0_1_1".ref   = "master";
  inputs."xiaomi-v0_1_1".repo  = "xiaomi";
  inputs."xiaomi-v0_1_1".type  = "github";
  inputs."xiaomi-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_2".dir   = "v0_1_2";
  inputs."xiaomi-v0_1_2".owner = "nim-nix-pkgs";
  inputs."xiaomi-v0_1_2".ref   = "master";
  inputs."xiaomi-v0_1_2".repo  = "xiaomi";
  inputs."xiaomi-v0_1_2".type  = "github";
  inputs."xiaomi-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_3".dir   = "v0_1_3";
  inputs."xiaomi-v0_1_3".owner = "nim-nix-pkgs";
  inputs."xiaomi-v0_1_3".ref   = "master";
  inputs."xiaomi-v0_1_3".repo  = "xiaomi";
  inputs."xiaomi-v0_1_3".type  = "github";
  inputs."xiaomi-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xiaomi-v0_1_4".dir   = "v0_1_4";
  inputs."xiaomi-v0_1_4".owner = "nim-nix-pkgs";
  inputs."xiaomi-v0_1_4".ref   = "master";
  inputs."xiaomi-v0_1_4".repo  = "xiaomi";
  inputs."xiaomi-v0_1_4".type  = "github";
  inputs."xiaomi-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xiaomi-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
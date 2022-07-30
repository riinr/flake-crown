{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nesper-devel".dir   = "devel";
  inputs."nesper-devel".owner = "nim-nix-pkgs";
  inputs."nesper-devel".ref   = "master";
  inputs."nesper-devel".repo  = "nesper";
  inputs."nesper-devel".type  = "github";
  inputs."nesper-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-master".dir   = "master";
  inputs."nesper-master".owner = "nim-nix-pkgs";
  inputs."nesper-master".ref   = "master";
  inputs."nesper-master".repo  = "nesper";
  inputs."nesper-master".type  = "github";
  inputs."nesper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-0_5_0".dir   = "0_5_0";
  inputs."nesper-0_5_0".owner = "nim-nix-pkgs";
  inputs."nesper-0_5_0".ref   = "master";
  inputs."nesper-0_5_0".repo  = "nesper";
  inputs."nesper-0_5_0".type  = "github";
  inputs."nesper-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_2_0".dir   = "v0_2_0";
  inputs."nesper-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nesper-v0_2_0".ref   = "master";
  inputs."nesper-v0_2_0".repo  = "nesper";
  inputs."nesper-v0_2_0".type  = "github";
  inputs."nesper-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_3_0".dir   = "v0_3_0";
  inputs."nesper-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nesper-v0_3_0".ref   = "master";
  inputs."nesper-v0_3_0".repo  = "nesper";
  inputs."nesper-v0_3_0".type  = "github";
  inputs."nesper-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_4_0".dir   = "v0_4_0";
  inputs."nesper-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nesper-v0_4_0".ref   = "master";
  inputs."nesper-v0_4_0".repo  = "nesper";
  inputs."nesper-v0_4_0".type  = "github";
  inputs."nesper-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_4_1".dir   = "v0_4_1";
  inputs."nesper-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nesper-v0_4_1".ref   = "master";
  inputs."nesper-v0_4_1".repo  = "nesper";
  inputs."nesper-v0_4_1".type  = "github";
  inputs."nesper-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesper-v0_6_0".dir   = "v0_6_0";
  inputs."nesper-v0_6_0".owner = "nim-nix-pkgs";
  inputs."nesper-v0_6_0".ref   = "master";
  inputs."nesper-v0_6_0".repo  = "nesper";
  inputs."nesper-v0_6_0".type  = "github";
  inputs."nesper-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesper-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
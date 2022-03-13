{
  description = ''Cross platform system information.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sysinfo-master".dir   = "master";
  inputs."sysinfo-master".owner = "nim-nix-pkgs";
  inputs."sysinfo-master".ref   = "master";
  inputs."sysinfo-master".repo  = "sysinfo";
  inputs."sysinfo-master".type  = "github";
  inputs."sysinfo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysinfo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysinfo-v0_1_0".dir   = "v0_1_0";
  inputs."sysinfo-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sysinfo-v0_1_0".ref   = "master";
  inputs."sysinfo-v0_1_0".repo  = "sysinfo";
  inputs."sysinfo-v0_1_0".type  = "github";
  inputs."sysinfo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysinfo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sysinfo-v0_2_1".dir   = "v0_2_1";
  inputs."sysinfo-v0_2_1".owner = "nim-nix-pkgs";
  inputs."sysinfo-v0_2_1".ref   = "master";
  inputs."sysinfo-v0_2_1".repo  = "sysinfo";
  inputs."sysinfo-v0_2_1".type  = "github";
  inputs."sysinfo-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sysinfo-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''ADB protocol implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."adb-master".dir   = "master";
  inputs."adb-master".owner = "nim-nix-pkgs";
  inputs."adb-master".ref   = "master";
  inputs."adb-master".repo  = "adb";
  inputs."adb-master".type  = "github";
  inputs."adb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."adb-v0_1_0".dir   = "v0_1_0";
  inputs."adb-v0_1_0".owner = "nim-nix-pkgs";
  inputs."adb-v0_1_0".ref   = "master";
  inputs."adb-v0_1_0".repo  = "adb";
  inputs."adb-v0_1_0".type  = "github";
  inputs."adb-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."adb-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Desktop notifications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notification-master".dir   = "master";
  inputs."notification-master".owner = "nim-nix-pkgs";
  inputs."notification-master".ref   = "master";
  inputs."notification-master".repo  = "notification";
  inputs."notification-master".type  = "github";
  inputs."notification-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notification-v0_1_0".dir   = "v0_1_0";
  inputs."notification-v0_1_0".owner = "nim-nix-pkgs";
  inputs."notification-v0_1_0".ref   = "master";
  inputs."notification-v0_1_0".repo  = "notification";
  inputs."notification-v0_1_0".type  = "github";
  inputs."notification-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notification-v0_1_1".dir   = "v0_1_1";
  inputs."notification-v0_1_1".owner = "nim-nix-pkgs";
  inputs."notification-v0_1_1".ref   = "master";
  inputs."notification-v0_1_1".repo  = "notification";
  inputs."notification-v0_1_1".type  = "github";
  inputs."notification-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notification-v0_2_0".dir   = "v0_2_0";
  inputs."notification-v0_2_0".owner = "nim-nix-pkgs";
  inputs."notification-v0_2_0".ref   = "master";
  inputs."notification-v0_2_0".repo  = "notification";
  inputs."notification-v0_2_0".type  = "github";
  inputs."notification-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notification-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
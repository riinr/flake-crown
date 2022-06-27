{
  description = ''unittest fork focused on parallel test execution'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unittest2-master".dir   = "master";
  inputs."unittest2-master".owner = "nim-nix-pkgs";
  inputs."unittest2-master".ref   = "master";
  inputs."unittest2-master".repo  = "unittest2";
  inputs."unittest2-master".type  = "github";
  inputs."unittest2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_1".dir   = "v0_0_1";
  inputs."unittest2-v0_0_1".owner = "nim-nix-pkgs";
  inputs."unittest2-v0_0_1".ref   = "master";
  inputs."unittest2-v0_0_1".repo  = "unittest2";
  inputs."unittest2-v0_0_1".type  = "github";
  inputs."unittest2-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_2".dir   = "v0_0_2";
  inputs."unittest2-v0_0_2".owner = "nim-nix-pkgs";
  inputs."unittest2-v0_0_2".ref   = "master";
  inputs."unittest2-v0_0_2".repo  = "unittest2";
  inputs."unittest2-v0_0_2".type  = "github";
  inputs."unittest2-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_3".dir   = "v0_0_3";
  inputs."unittest2-v0_0_3".owner = "nim-nix-pkgs";
  inputs."unittest2-v0_0_3".ref   = "master";
  inputs."unittest2-v0_0_3".repo  = "unittest2";
  inputs."unittest2-v0_0_3".type  = "github";
  inputs."unittest2-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unittest2-v0_0_4".dir   = "v0_0_4";
  inputs."unittest2-v0_0_4".owner = "nim-nix-pkgs";
  inputs."unittest2-v0_0_4".ref   = "master";
  inputs."unittest2-v0_0_4".repo  = "unittest2";
  inputs."unittest2-v0_0_4".type  = "github";
  inputs."unittest2-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
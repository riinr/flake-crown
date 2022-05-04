{
  description = ''SSH, SCP and SFTP client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ssh2-master".dir   = "master";
  inputs."ssh2-master".owner = "nim-nix-pkgs";
  inputs."ssh2-master".ref   = "master";
  inputs."ssh2-master".repo  = "ssh2";
  inputs."ssh2-master".type  = "github";
  inputs."ssh2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssh2-0_1_0".dir   = "0_1_0";
  inputs."ssh2-0_1_0".owner = "nim-nix-pkgs";
  inputs."ssh2-0_1_0".ref   = "master";
  inputs."ssh2-0_1_0".repo  = "ssh2";
  inputs."ssh2-0_1_0".type  = "github";
  inputs."ssh2-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssh2-0_1_1".dir   = "0_1_1";
  inputs."ssh2-0_1_1".owner = "nim-nix-pkgs";
  inputs."ssh2-0_1_1".ref   = "master";
  inputs."ssh2-0_1_1".repo  = "ssh2";
  inputs."ssh2-0_1_1".type  = "github";
  inputs."ssh2-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssh2-0_1_2".dir   = "0_1_2";
  inputs."ssh2-0_1_2".owner = "nim-nix-pkgs";
  inputs."ssh2-0_1_2".ref   = "master";
  inputs."ssh2-0_1_2".repo  = "ssh2";
  inputs."ssh2-0_1_2".type  = "github";
  inputs."ssh2-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
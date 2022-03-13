{
  description = ''libssh2 wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimssh2-master".dir   = "master";
  inputs."nimssh2-master".owner = "nim-nix-pkgs";
  inputs."nimssh2-master".ref   = "master";
  inputs."nimssh2-master".repo  = "nimssh2";
  inputs."nimssh2-master".type  = "github";
  inputs."nimssh2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssh2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssh2-v0_1_1".dir   = "v0_1_1";
  inputs."nimssh2-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimssh2-v0_1_1".ref   = "master";
  inputs."nimssh2-v0_1_1".repo  = "nimssh2";
  inputs."nimssh2-v0_1_1".type  = "github";
  inputs."nimssh2-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssh2-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssh2-v0_1_2".dir   = "v0_1_2";
  inputs."nimssh2-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimssh2-v0_1_2".ref   = "master";
  inputs."nimssh2-v0_1_2".repo  = "nimssh2";
  inputs."nimssh2-v0_1_2".type  = "github";
  inputs."nimssh2-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssh2-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimssh2-v0_1_3".dir   = "v0_1_3";
  inputs."nimssh2-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimssh2-v0_1_3".ref   = "master";
  inputs."nimssh2-v0_1_3".repo  = "nimssh2";
  inputs."nimssh2-v0_1_3".type  = "github";
  inputs."nimssh2-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimssh2-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
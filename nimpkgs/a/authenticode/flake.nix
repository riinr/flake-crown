{
  description = ''PE Authenticode parser based on libyara implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."authenticode-master".dir   = "master";
  inputs."authenticode-master".owner = "nim-nix-pkgs";
  inputs."authenticode-master".ref   = "master";
  inputs."authenticode-master".repo  = "authenticode";
  inputs."authenticode-master".type  = "github";
  inputs."authenticode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."authenticode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."authenticode-v0_1_0".dir   = "v0_1_0";
  inputs."authenticode-v0_1_0".owner = "nim-nix-pkgs";
  inputs."authenticode-v0_1_0".ref   = "master";
  inputs."authenticode-v0_1_0".repo  = "authenticode";
  inputs."authenticode-v0_1_0".type  = "github";
  inputs."authenticode-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."authenticode-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."authenticode-v0_1_1".dir   = "v0_1_1";
  inputs."authenticode-v0_1_1".owner = "nim-nix-pkgs";
  inputs."authenticode-v0_1_1".ref   = "master";
  inputs."authenticode-v0_1_1".repo  = "authenticode";
  inputs."authenticode-v0_1_1".type  = "github";
  inputs."authenticode-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."authenticode-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
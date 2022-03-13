{
  description = ''Web-based playground for testing Nim code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."playground-master".dir   = "master";
  inputs."playground-master".owner = "nim-nix-pkgs";
  inputs."playground-master".ref   = "master";
  inputs."playground-master".repo  = "playground";
  inputs."playground-master".type  = "github";
  inputs."playground-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."playground-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."playground-v0_1_0".dir   = "v0_1_0";
  inputs."playground-v0_1_0".owner = "nim-nix-pkgs";
  inputs."playground-v0_1_0".ref   = "master";
  inputs."playground-v0_1_0".repo  = "playground";
  inputs."playground-v0_1_0".type  = "github";
  inputs."playground-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."playground-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
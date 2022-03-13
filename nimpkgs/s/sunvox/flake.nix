{
  description = ''Bindings for SunVox modular synthesizer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sunvox-master".dir   = "master";
  inputs."sunvox-master".owner = "nim-nix-pkgs";
  inputs."sunvox-master".ref   = "master";
  inputs."sunvox-master".repo  = "sunvox";
  inputs."sunvox-master".type  = "github";
  inputs."sunvox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sunvox-0_0_1".dir   = "0_0_1";
  inputs."sunvox-0_0_1".owner = "nim-nix-pkgs";
  inputs."sunvox-0_0_1".ref   = "master";
  inputs."sunvox-0_0_1".repo  = "sunvox";
  inputs."sunvox-0_0_1".type  = "github";
  inputs."sunvox-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sunvox-0_1_1".dir   = "0_1_1";
  inputs."sunvox-0_1_1".owner = "nim-nix-pkgs";
  inputs."sunvox-0_1_1".ref   = "master";
  inputs."sunvox-0_1_1".repo  = "sunvox";
  inputs."sunvox-0_1_1".type  = "github";
  inputs."sunvox-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sunvox-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
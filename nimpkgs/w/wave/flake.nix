{
  description = ''wave is a tiny WAV sound module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wave-develop".dir   = "develop";
  inputs."wave-develop".owner = "nim-nix-pkgs";
  inputs."wave-develop".ref   = "master";
  inputs."wave-develop".repo  = "wave";
  inputs."wave-develop".type  = "github";
  inputs."wave-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wave-master".dir   = "master";
  inputs."wave-master".owner = "nim-nix-pkgs";
  inputs."wave-master".ref   = "master";
  inputs."wave-master".repo  = "wave";
  inputs."wave-master".type  = "github";
  inputs."wave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wave-v1_0_0".dir   = "v1_0_0";
  inputs."wave-v1_0_0".owner = "nim-nix-pkgs";
  inputs."wave-v1_0_0".ref   = "master";
  inputs."wave-v1_0_0".repo  = "wave";
  inputs."wave-v1_0_0".type  = "github";
  inputs."wave-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wave-v1_1_0".dir   = "v1_1_0";
  inputs."wave-v1_1_0".owner = "nim-nix-pkgs";
  inputs."wave-v1_1_0".ref   = "master";
  inputs."wave-v1_1_0".repo  = "wave";
  inputs."wave-v1_1_0".type  = "github";
  inputs."wave-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wave-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Cryptographic signing for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gungnir-master".dir   = "master";
  inputs."gungnir-master".owner = "nim-nix-pkgs";
  inputs."gungnir-master".ref   = "master";
  inputs."gungnir-master".repo  = "gungnir";
  inputs."gungnir-master".type  = "github";
  inputs."gungnir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gungnir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gungnir-v0_1_0".dir   = "v0_1_0";
  inputs."gungnir-v0_1_0".owner = "nim-nix-pkgs";
  inputs."gungnir-v0_1_0".ref   = "master";
  inputs."gungnir-v0_1_0".repo  = "gungnir";
  inputs."gungnir-v0_1_0".type  = "github";
  inputs."gungnir-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gungnir-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
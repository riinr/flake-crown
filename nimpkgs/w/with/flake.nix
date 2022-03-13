{
  description = ''Simple 'with' macro for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."with-master".dir   = "master";
  inputs."with-master".owner = "nim-nix-pkgs";
  inputs."with-master".ref   = "master";
  inputs."with-master".repo  = "with";
  inputs."with-master".type  = "github";
  inputs."with-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with-0_4_0".dir   = "0_4_0";
  inputs."with-0_4_0".owner = "nim-nix-pkgs";
  inputs."with-0_4_0".ref   = "master";
  inputs."with-0_4_0".repo  = "with";
  inputs."with-0_4_0".type  = "github";
  inputs."with-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with-v0_1_0".dir   = "v0_1_0";
  inputs."with-v0_1_0".owner = "nim-nix-pkgs";
  inputs."with-v0_1_0".ref   = "master";
  inputs."with-v0_1_0".repo  = "with";
  inputs."with-v0_1_0".type  = "github";
  inputs."with-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with-v0_2_0".dir   = "v0_2_0";
  inputs."with-v0_2_0".owner = "nim-nix-pkgs";
  inputs."with-v0_2_0".ref   = "master";
  inputs."with-v0_2_0".repo  = "with";
  inputs."with-v0_2_0".type  = "github";
  inputs."with-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
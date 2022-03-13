{
  description = ''implements macro creates toInterface proc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."interface_implements-main".dir   = "main";
  inputs."interface_implements-main".owner = "nim-nix-pkgs";
  inputs."interface_implements-main".ref   = "master";
  inputs."interface_implements-main".repo  = "interface_implements";
  inputs."interface_implements-main".type  = "github";
  inputs."interface_implements-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."interface_implements-0_1_0".dir   = "0_1_0";
  inputs."interface_implements-0_1_0".owner = "nim-nix-pkgs";
  inputs."interface_implements-0_1_0".ref   = "master";
  inputs."interface_implements-0_1_0".repo  = "interface_implements";
  inputs."interface_implements-0_1_0".type  = "github";
  inputs."interface_implements-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."interface_implements-0_2_0".dir   = "0_2_0";
  inputs."interface_implements-0_2_0".owner = "nim-nix-pkgs";
  inputs."interface_implements-0_2_0".ref   = "master";
  inputs."interface_implements-0_2_0".repo  = "interface_implements";
  inputs."interface_implements-0_2_0".type  = "github";
  inputs."interface_implements-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."interface_implements-0_2_1".dir   = "0_2_1";
  inputs."interface_implements-0_2_1".owner = "nim-nix-pkgs";
  inputs."interface_implements-0_2_1".ref   = "master";
  inputs."interface_implements-0_2_1".repo  = "interface_implements";
  inputs."interface_implements-0_2_1".type  = "github";
  inputs."interface_implements-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."interface_implements-v0_2_2".dir   = "v0_2_2";
  inputs."interface_implements-v0_2_2".owner = "nim-nix-pkgs";
  inputs."interface_implements-v0_2_2".ref   = "master";
  inputs."interface_implements-v0_2_2".repo  = "interface_implements";
  inputs."interface_implements-v0_2_2".type  = "github";
  inputs."interface_implements-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interface_implements-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''webrod'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webrod-main".dir   = "main";
  inputs."webrod-main".owner = "nim-nix-pkgs";
  inputs."webrod-main".ref   = "master";
  inputs."webrod-main".repo  = "webrod";
  inputs."webrod-main".type  = "github";
  inputs."webrod-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webrod-0_1_0".dir   = "0_1_0";
  inputs."webrod-0_1_0".owner = "nim-nix-pkgs";
  inputs."webrod-0_1_0".ref   = "master";
  inputs."webrod-0_1_0".repo  = "webrod";
  inputs."webrod-0_1_0".type  = "github";
  inputs."webrod-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webrod-0_2_0".dir   = "0_2_0";
  inputs."webrod-0_2_0".owner = "nim-nix-pkgs";
  inputs."webrod-0_2_0".ref   = "master";
  inputs."webrod-0_2_0".repo  = "webrod";
  inputs."webrod-0_2_0".type  = "github";
  inputs."webrod-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webrod-0_3_0".dir   = "0_3_0";
  inputs."webrod-0_3_0".owner = "nim-nix-pkgs";
  inputs."webrod-0_3_0".ref   = "master";
  inputs."webrod-0_3_0".repo  = "webrod";
  inputs."webrod-0_3_0".type  = "github";
  inputs."webrod-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webrod-0_4_0".dir   = "0_4_0";
  inputs."webrod-0_4_0".owner = "nim-nix-pkgs";
  inputs."webrod-0_4_0".ref   = "master";
  inputs."webrod-0_4_0".repo  = "webrod";
  inputs."webrod-0_4_0".type  = "github";
  inputs."webrod-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webrod-0_5_0".dir   = "0_5_0";
  inputs."webrod-0_5_0".owner = "nim-nix-pkgs";
  inputs."webrod-0_5_0".ref   = "master";
  inputs."webrod-0_5_0".repo  = "webrod";
  inputs."webrod-0_5_0".type  = "github";
  inputs."webrod-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webrod-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
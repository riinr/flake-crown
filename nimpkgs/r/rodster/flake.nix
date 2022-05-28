{
  description = ''rodster'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rodster-main".dir   = "main";
  inputs."rodster-main".owner = "nim-nix-pkgs";
  inputs."rodster-main".ref   = "master";
  inputs."rodster-main".repo  = "rodster";
  inputs."rodster-main".type  = "github";
  inputs."rodster-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-0_1_0".dir   = "0_1_0";
  inputs."rodster-0_1_0".owner = "nim-nix-pkgs";
  inputs."rodster-0_1_0".ref   = "master";
  inputs."rodster-0_1_0".repo  = "rodster";
  inputs."rodster-0_1_0".type  = "github";
  inputs."rodster-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-0_2_0".dir   = "0_2_0";
  inputs."rodster-0_2_0".owner = "nim-nix-pkgs";
  inputs."rodster-0_2_0".ref   = "master";
  inputs."rodster-0_2_0".repo  = "rodster";
  inputs."rodster-0_2_0".type  = "github";
  inputs."rodster-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-0_3_0".dir   = "0_3_0";
  inputs."rodster-0_3_0".owner = "nim-nix-pkgs";
  inputs."rodster-0_3_0".ref   = "master";
  inputs."rodster-0_3_0".repo  = "rodster";
  inputs."rodster-0_3_0".type  = "github";
  inputs."rodster-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_0_0".dir   = "1_0_0";
  inputs."rodster-1_0_0".owner = "nim-nix-pkgs";
  inputs."rodster-1_0_0".ref   = "master";
  inputs."rodster-1_0_0".repo  = "rodster";
  inputs."rodster-1_0_0".type  = "github";
  inputs."rodster-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_1_0".dir   = "1_1_0";
  inputs."rodster-1_1_0".owner = "nim-nix-pkgs";
  inputs."rodster-1_1_0".ref   = "master";
  inputs."rodster-1_1_0".repo  = "rodster";
  inputs."rodster-1_1_0".type  = "github";
  inputs."rodster-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_2_0".dir   = "1_2_0";
  inputs."rodster-1_2_0".owner = "nim-nix-pkgs";
  inputs."rodster-1_2_0".ref   = "master";
  inputs."rodster-1_2_0".repo  = "rodster";
  inputs."rodster-1_2_0".type  = "github";
  inputs."rodster-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodster-1_4_0".dir   = "1_4_0";
  inputs."rodster-1_4_0".owner = "nim-nix-pkgs";
  inputs."rodster-1_4_0".ref   = "master";
  inputs."rodster-1_4_0".repo  = "rodster";
  inputs."rodster-1_4_0".type  = "github";
  inputs."rodster-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodster-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
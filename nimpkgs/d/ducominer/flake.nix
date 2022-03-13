{
  description = ''A fast, multithreaded miner for DuinoCoin'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ducominer-main".dir   = "main";
  inputs."ducominer-main".owner = "nim-nix-pkgs";
  inputs."ducominer-main".ref   = "master";
  inputs."ducominer-main".repo  = "ducominer";
  inputs."ducominer-main".type  = "github";
  inputs."ducominer-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ducominer-1_0_0".dir   = "1_0_0";
  inputs."ducominer-1_0_0".owner = "nim-nix-pkgs";
  inputs."ducominer-1_0_0".ref   = "master";
  inputs."ducominer-1_0_0".repo  = "ducominer";
  inputs."ducominer-1_0_0".type  = "github";
  inputs."ducominer-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ducominer-1_0_1".dir   = "1_0_1";
  inputs."ducominer-1_0_1".owner = "nim-nix-pkgs";
  inputs."ducominer-1_0_1".ref   = "master";
  inputs."ducominer-1_0_1".repo  = "ducominer";
  inputs."ducominer-1_0_1".type  = "github";
  inputs."ducominer-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ducominer-1_1_0".dir   = "1_1_0";
  inputs."ducominer-1_1_0".owner = "nim-nix-pkgs";
  inputs."ducominer-1_1_0".ref   = "master";
  inputs."ducominer-1_1_0".repo  = "ducominer";
  inputs."ducominer-1_1_0".type  = "github";
  inputs."ducominer-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ducominer-1_2_0".dir   = "1_2_0";
  inputs."ducominer-1_2_0".owner = "nim-nix-pkgs";
  inputs."ducominer-1_2_0".ref   = "master";
  inputs."ducominer-1_2_0".repo  = "ducominer";
  inputs."ducominer-1_2_0".type  = "github";
  inputs."ducominer-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ducominer-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
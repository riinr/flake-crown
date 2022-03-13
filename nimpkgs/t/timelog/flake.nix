{
  description = ''Simple nimble package to log monotic timings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timelog-main".dir   = "main";
  inputs."timelog-main".owner = "nim-nix-pkgs";
  inputs."timelog-main".ref   = "master";
  inputs."timelog-main".repo  = "timelog";
  inputs."timelog-main".type  = "github";
  inputs."timelog-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_0_0".dir   = "v1_0_0";
  inputs."timelog-v1_0_0".owner = "nim-nix-pkgs";
  inputs."timelog-v1_0_0".ref   = "master";
  inputs."timelog-v1_0_0".repo  = "timelog";
  inputs."timelog-v1_0_0".type  = "github";
  inputs."timelog-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_0_1".dir   = "v1_0_1";
  inputs."timelog-v1_0_1".owner = "nim-nix-pkgs";
  inputs."timelog-v1_0_1".ref   = "master";
  inputs."timelog-v1_0_1".repo  = "timelog";
  inputs."timelog-v1_0_1".type  = "github";
  inputs."timelog-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_0_2".dir   = "v1_0_2";
  inputs."timelog-v1_0_2".owner = "nim-nix-pkgs";
  inputs."timelog-v1_0_2".ref   = "master";
  inputs."timelog-v1_0_2".repo  = "timelog";
  inputs."timelog-v1_0_2".type  = "github";
  inputs."timelog-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_1_0".dir   = "v1_1_0";
  inputs."timelog-v1_1_0".owner = "nim-nix-pkgs";
  inputs."timelog-v1_1_0".ref   = "master";
  inputs."timelog-v1_1_0".repo  = "timelog";
  inputs."timelog-v1_1_0".type  = "github";
  inputs."timelog-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_2_0".dir   = "v1_2_0";
  inputs."timelog-v1_2_0".owner = "nim-nix-pkgs";
  inputs."timelog-v1_2_0".ref   = "master";
  inputs."timelog-v1_2_0".repo  = "timelog";
  inputs."timelog-v1_2_0".type  = "github";
  inputs."timelog-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timelog-v1_3_0".dir   = "v1_3_0";
  inputs."timelog-v1_3_0".owner = "nim-nix-pkgs";
  inputs."timelog-v1_3_0".ref   = "master";
  inputs."timelog-v1_3_0".repo  = "timelog";
  inputs."timelog-v1_3_0".type  = "github";
  inputs."timelog-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timelog-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
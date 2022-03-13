{
  description = ''An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ballpark-main".dir   = "main";
  inputs."ballpark-main".owner = "nim-nix-pkgs";
  inputs."ballpark-main".ref   = "master";
  inputs."ballpark-main".repo  = "ballpark";
  inputs."ballpark-main".type  = "github";
  inputs."ballpark-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballpark-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ballpark-v1_0_0".dir   = "v1_0_0";
  inputs."ballpark-v1_0_0".owner = "nim-nix-pkgs";
  inputs."ballpark-v1_0_0".ref   = "master";
  inputs."ballpark-v1_0_0".repo  = "ballpark";
  inputs."ballpark-v1_0_0".type  = "github";
  inputs."ballpark-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballpark-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ballpark-v1_0_1".dir   = "v1_0_1";
  inputs."ballpark-v1_0_1".owner = "nim-nix-pkgs";
  inputs."ballpark-v1_0_1".ref   = "master";
  inputs."ballpark-v1_0_1".repo  = "ballpark";
  inputs."ballpark-v1_0_1".type  = "github";
  inputs."ballpark-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballpark-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
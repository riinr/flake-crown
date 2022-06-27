{
  description = ''A Nim wrapper for the Govee API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."govee-main".dir   = "main";
  inputs."govee-main".owner = "nim-nix-pkgs";
  inputs."govee-main".ref   = "master";
  inputs."govee-main".repo  = "govee";
  inputs."govee-main".type  = "github";
  inputs."govee-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."govee-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gapi-1_0_0".dir   = "1_0_0";
  inputs."gapi-1_0_0".owner = "nim-nix-pkgs";
  inputs."gapi-1_0_0".ref   = "master";
  inputs."gapi-1_0_0".repo  = "gapi";
  inputs."gapi-1_0_0".type  = "github";
  inputs."gapi-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gapi-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."govee-1_0_1".dir   = "1_0_1";
  inputs."govee-1_0_1".owner = "nim-nix-pkgs";
  inputs."govee-1_0_1".ref   = "master";
  inputs."govee-1_0_1".repo  = "govee";
  inputs."govee-1_0_1".type  = "github";
  inputs."govee-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."govee-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."govee-1_0_2".dir   = "1_0_2";
  inputs."govee-1_0_2".owner = "nim-nix-pkgs";
  inputs."govee-1_0_2".ref   = "master";
  inputs."govee-1_0_2".repo  = "govee";
  inputs."govee-1_0_2".type  = "github";
  inputs."govee-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."govee-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."govee-1_0_3".dir   = "1_0_3";
  inputs."govee-1_0_3".owner = "nim-nix-pkgs";
  inputs."govee-1_0_3".ref   = "master";
  inputs."govee-1_0_3".repo  = "govee";
  inputs."govee-1_0_3".type  = "github";
  inputs."govee-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."govee-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
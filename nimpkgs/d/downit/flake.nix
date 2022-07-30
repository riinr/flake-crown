{
  description = ''An asynchronous donwload system.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."downit-devel".dir   = "devel";
  inputs."downit-devel".owner = "nim-nix-pkgs";
  inputs."downit-devel".ref   = "master";
  inputs."downit-devel".repo  = "downit";
  inputs."downit-devel".type  = "github";
  inputs."downit-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."downit-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."downit-main".dir   = "main";
  inputs."downit-main".owner = "nim-nix-pkgs";
  inputs."downit-main".ref   = "master";
  inputs."downit-main".repo  = "downit";
  inputs."downit-main".type  = "github";
  inputs."downit-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."downit-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."downit-0_1_0".dir   = "0_1_0";
  inputs."downit-0_1_0".owner = "nim-nix-pkgs";
  inputs."downit-0_1_0".ref   = "master";
  inputs."downit-0_1_0".repo  = "downit";
  inputs."downit-0_1_0".type  = "github";
  inputs."downit-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."downit-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."downit-0_2_0".dir   = "0_2_0";
  inputs."downit-0_2_0".owner = "nim-nix-pkgs";
  inputs."downit-0_2_0".ref   = "master";
  inputs."downit-0_2_0".repo  = "downit";
  inputs."downit-0_2_0".type  = "github";
  inputs."downit-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."downit-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
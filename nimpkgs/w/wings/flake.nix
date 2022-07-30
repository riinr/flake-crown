{
  description = ''A simple cross language struct and enum file generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wings-devel".dir   = "devel";
  inputs."wings-devel".owner = "nim-nix-pkgs";
  inputs."wings-devel".ref   = "master";
  inputs."wings-devel".repo  = "wings";
  inputs."wings-devel".type  = "github";
  inputs."wings-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_1-alpha".dir   = "v0_0_1-alpha";
  inputs."wings-v0_0_1-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_1-alpha".ref   = "master";
  inputs."wings-v0_0_1-alpha".repo  = "wings";
  inputs."wings-v0_0_1-alpha".type  = "github";
  inputs."wings-v0_0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_2-alpha".dir   = "v0_0_2-alpha";
  inputs."wings-v0_0_2-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_2-alpha".ref   = "master";
  inputs."wings-v0_0_2-alpha".repo  = "wings";
  inputs."wings-v0_0_2-alpha".type  = "github";
  inputs."wings-v0_0_2-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_2-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_3-alpha".dir   = "v0_0_3-alpha";
  inputs."wings-v0_0_3-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_3-alpha".ref   = "master";
  inputs."wings-v0_0_3-alpha".repo  = "wings";
  inputs."wings-v0_0_3-alpha".type  = "github";
  inputs."wings-v0_0_3-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_3-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_4-alpha".dir   = "v0_0_4-alpha";
  inputs."wings-v0_0_4-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_4-alpha".ref   = "master";
  inputs."wings-v0_0_4-alpha".repo  = "wings";
  inputs."wings-v0_0_4-alpha".type  = "github";
  inputs."wings-v0_0_4-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_4-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_5-alpha".dir   = "v0_0_5-alpha";
  inputs."wings-v0_0_5-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_5-alpha".ref   = "master";
  inputs."wings-v0_0_5-alpha".repo  = "wings";
  inputs."wings-v0_0_5-alpha".type  = "github";
  inputs."wings-v0_0_5-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_5-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_6-alpha".dir   = "v0_0_6-alpha";
  inputs."wings-v0_0_6-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_6-alpha".ref   = "master";
  inputs."wings-v0_0_6-alpha".repo  = "wings";
  inputs."wings-v0_0_6-alpha".type  = "github";
  inputs."wings-v0_0_6-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_6-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wings-v0_0_7-alpha".dir   = "v0_0_7-alpha";
  inputs."wings-v0_0_7-alpha".owner = "nim-nix-pkgs";
  inputs."wings-v0_0_7-alpha".ref   = "master";
  inputs."wings-v0_0_7-alpha".repo  = "wings";
  inputs."wings-v0_0_7-alpha".type  = "github";
  inputs."wings-v0_0_7-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wings-v0_0_7-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
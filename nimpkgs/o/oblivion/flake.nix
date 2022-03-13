{
  description = ''Shell command manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oblivion-main".dir   = "main";
  inputs."oblivion-main".owner = "nim-nix-pkgs";
  inputs."oblivion-main".ref   = "master";
  inputs."oblivion-main".repo  = "oblivion";
  inputs."oblivion-main".type  = "github";
  inputs."oblivion-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oblivion-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oblivion-v0_1_0".dir   = "v0_1_0";
  inputs."oblivion-v0_1_0".owner = "nim-nix-pkgs";
  inputs."oblivion-v0_1_0".ref   = "master";
  inputs."oblivion-v0_1_0".repo  = "oblivion";
  inputs."oblivion-v0_1_0".type  = "github";
  inputs."oblivion-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oblivion-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
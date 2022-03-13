{
  description = ''A simple interactive calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cal-master".dir   = "master";
  inputs."cal-master".owner = "nim-nix-pkgs";
  inputs."cal-master".ref   = "master";
  inputs."cal-master".repo  = "cal";
  inputs."cal-master".type  = "github";
  inputs."cal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cal-v0_2_0".dir   = "v0_2_0";
  inputs."cal-v0_2_0".owner = "nim-nix-pkgs";
  inputs."cal-v0_2_0".ref   = "master";
  inputs."cal-v0_2_0".repo  = "cal";
  inputs."cal-v0_2_0".type  = "github";
  inputs."cal-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cal-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
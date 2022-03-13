{
  description = ''Simple window maker.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."siwin-master".dir   = "master";
  inputs."siwin-master".owner = "nim-nix-pkgs";
  inputs."siwin-master".ref   = "master";
  inputs."siwin-master".repo  = "siwin";
  inputs."siwin-master".type  = "github";
  inputs."siwin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-0_4".dir   = "0_4";
  inputs."siwin-0_4".owner = "nim-nix-pkgs";
  inputs."siwin-0_4".ref   = "master";
  inputs."siwin-0_4".repo  = "siwin";
  inputs."siwin-0_4".type  = "github";
  inputs."siwin-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."siwin-v0_3".dir   = "v0_3";
  inputs."siwin-v0_3".owner = "nim-nix-pkgs";
  inputs."siwin-v0_3".ref   = "master";
  inputs."siwin-v0_3".repo  = "siwin";
  inputs."siwin-v0_3".type  = "github";
  inputs."siwin-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."siwin-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
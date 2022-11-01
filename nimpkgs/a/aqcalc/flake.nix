{
  description = ''Calculate gematria values for Alphanumeric Qabbala'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aqcalc-master".dir   = "master";
  inputs."aqcalc-master".owner = "nim-nix-pkgs";
  inputs."aqcalc-master".ref   = "master";
  inputs."aqcalc-master".repo  = "aqcalc";
  inputs."aqcalc-master".type  = "github";
  inputs."aqcalc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aqcalc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aqcalc-0_1".dir   = "0_1";
  inputs."aqcalc-0_1".owner = "nim-nix-pkgs";
  inputs."aqcalc-0_1".ref   = "master";
  inputs."aqcalc-0_1".repo  = "aqcalc";
  inputs."aqcalc-0_1".type  = "github";
  inputs."aqcalc-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aqcalc-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aqcalc-0_2".dir   = "0_2";
  inputs."aqcalc-0_2".owner = "nim-nix-pkgs";
  inputs."aqcalc-0_2".ref   = "master";
  inputs."aqcalc-0_2".repo  = "aqcalc";
  inputs."aqcalc-0_2".type  = "github";
  inputs."aqcalc-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aqcalc-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aqcalc-0_3".dir   = "0_3";
  inputs."aqcalc-0_3".owner = "nim-nix-pkgs";
  inputs."aqcalc-0_3".ref   = "master";
  inputs."aqcalc-0_3".repo  = "aqcalc";
  inputs."aqcalc-0_3".type  = "github";
  inputs."aqcalc-0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aqcalc-0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aqcalc-0_3_1".dir   = "0_3_1";
  inputs."aqcalc-0_3_1".owner = "nim-nix-pkgs";
  inputs."aqcalc-0_3_1".ref   = "master";
  inputs."aqcalc-0_3_1".repo  = "aqcalc";
  inputs."aqcalc-0_3_1".type  = "github";
  inputs."aqcalc-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aqcalc-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
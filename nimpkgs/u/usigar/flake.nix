{
  description = ''USIG Argentina Government MultiSync API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."usigar-master".dir   = "master";
  inputs."usigar-master".owner = "nim-nix-pkgs";
  inputs."usigar-master".ref   = "master";
  inputs."usigar-master".repo  = "usigar";
  inputs."usigar-master".type  = "github";
  inputs."usigar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usigar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."usigar-0_1_5".dir   = "0_1_5";
  inputs."usigar-0_1_5".owner = "nim-nix-pkgs";
  inputs."usigar-0_1_5".ref   = "master";
  inputs."usigar-0_1_5".repo  = "usigar";
  inputs."usigar-0_1_5".type  = "github";
  inputs."usigar-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usigar-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
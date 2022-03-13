{
  description = ''A simple decimal library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simpledecimal-master".dir   = "master";
  inputs."simpledecimal-master".owner = "nim-nix-pkgs";
  inputs."simpledecimal-master".ref   = "master";
  inputs."simpledecimal-master".repo  = "simpledecimal";
  inputs."simpledecimal-master".type  = "github";
  inputs."simpledecimal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpledecimal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpledecimal-0_1_0".dir   = "0_1_0";
  inputs."simpledecimal-0_1_0".owner = "nim-nix-pkgs";
  inputs."simpledecimal-0_1_0".ref   = "master";
  inputs."simpledecimal-0_1_0".repo  = "simpledecimal";
  inputs."simpledecimal-0_1_0".type  = "github";
  inputs."simpledecimal-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpledecimal-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
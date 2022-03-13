{
  description = ''Color Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."palette-develop".dir   = "develop";
  inputs."palette-develop".owner = "nim-nix-pkgs";
  inputs."palette-develop".ref   = "master";
  inputs."palette-develop".repo  = "palette";
  inputs."palette-develop".type  = "github";
  inputs."palette-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."palette-master".dir   = "master";
  inputs."palette-master".owner = "nim-nix-pkgs";
  inputs."palette-master".ref   = "master";
  inputs."palette-master".repo  = "palette";
  inputs."palette-master".type  = "github";
  inputs."palette-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."palette-0_1_0".dir   = "0_1_0";
  inputs."palette-0_1_0".owner = "nim-nix-pkgs";
  inputs."palette-0_1_0".ref   = "master";
  inputs."palette-0_1_0".repo  = "palette";
  inputs."palette-0_1_0".type  = "github";
  inputs."palette-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."palette-0_2_0".dir   = "0_2_0";
  inputs."palette-0_2_0".owner = "nim-nix-pkgs";
  inputs."palette-0_2_0".ref   = "master";
  inputs."palette-0_2_0".repo  = "palette";
  inputs."palette-0_2_0".type  = "github";
  inputs."palette-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
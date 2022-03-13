{
  description = ''Password generation library in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."passgen-master".dir   = "master";
  inputs."passgen-master".owner = "nim-nix-pkgs";
  inputs."passgen-master".ref   = "master";
  inputs."passgen-master".repo  = "passgen";
  inputs."passgen-master".type  = "github";
  inputs."passgen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."passgen-0_1_0".dir   = "0_1_0";
  inputs."passgen-0_1_0".owner = "nim-nix-pkgs";
  inputs."passgen-0_1_0".ref   = "master";
  inputs."passgen-0_1_0".repo  = "passgen";
  inputs."passgen-0_1_0".type  = "github";
  inputs."passgen-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."passgen-0_2_0".dir   = "0_2_0";
  inputs."passgen-0_2_0".owner = "nim-nix-pkgs";
  inputs."passgen-0_2_0".ref   = "master";
  inputs."passgen-0_2_0".repo  = "passgen";
  inputs."passgen-0_2_0".type  = "github";
  inputs."passgen-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
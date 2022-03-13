{
  description = ''Duplicate files finder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndf-master".dir   = "master";
  inputs."ndf-master".owner = "nim-nix-pkgs";
  inputs."ndf-master".ref   = "master";
  inputs."ndf-master".repo  = "ndf";
  inputs."ndf-master".type  = "github";
  inputs."ndf-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndf-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndf-0_3_0".dir   = "0_3_0";
  inputs."ndf-0_3_0".owner = "nim-nix-pkgs";
  inputs."ndf-0_3_0".ref   = "master";
  inputs."ndf-0_3_0".repo  = "ndf";
  inputs."ndf-0_3_0".type  = "github";
  inputs."ndf-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndf-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndf-0_4_0".dir   = "0_4_0";
  inputs."ndf-0_4_0".owner = "nim-nix-pkgs";
  inputs."ndf-0_4_0".ref   = "master";
  inputs."ndf-0_4_0".repo  = "ndf";
  inputs."ndf-0_4_0".type  = "github";
  inputs."ndf-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndf-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
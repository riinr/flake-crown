{
  description = ''Disk-based sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spills-master".dir   = "master";
  inputs."spills-master".owner = "nim-nix-pkgs";
  inputs."spills-master".ref   = "master";
  inputs."spills-master".repo  = "spills";
  inputs."spills-master".type  = "github";
  inputs."spills-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spills-0_1_0".dir   = "0_1_0";
  inputs."spills-0_1_0".owner = "nim-nix-pkgs";
  inputs."spills-0_1_0".ref   = "master";
  inputs."spills-0_1_0".repo  = "spills";
  inputs."spills-0_1_0".type  = "github";
  inputs."spills-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spills-0_1_1".dir   = "0_1_1";
  inputs."spills-0_1_1".owner = "nim-nix-pkgs";
  inputs."spills-0_1_1".ref   = "master";
  inputs."spills-0_1_1".repo  = "spills";
  inputs."spills-0_1_1".type  = "github";
  inputs."spills-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spills-0_1_2".dir   = "0_1_2";
  inputs."spills-0_1_2".owner = "nim-nix-pkgs";
  inputs."spills-0_1_2".ref   = "master";
  inputs."spills-0_1_2".repo  = "spills";
  inputs."spills-0_1_2".type  = "github";
  inputs."spills-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spills-0_1_3".dir   = "0_1_3";
  inputs."spills-0_1_3".owner = "nim-nix-pkgs";
  inputs."spills-0_1_3".ref   = "master";
  inputs."spills-0_1_3".repo  = "spills";
  inputs."spills-0_1_3".type  = "github";
  inputs."spills-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spills-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
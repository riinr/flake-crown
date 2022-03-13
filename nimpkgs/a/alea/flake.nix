{
  description = ''Define and compose random variables'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."alea-master".dir   = "master";
  inputs."alea-master".owner = "nim-nix-pkgs";
  inputs."alea-master".ref   = "master";
  inputs."alea-master".repo  = "alea";
  inputs."alea-master".type  = "github";
  inputs."alea-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alea-0_1_0".dir   = "0_1_0";
  inputs."alea-0_1_0".owner = "nim-nix-pkgs";
  inputs."alea-0_1_0".ref   = "master";
  inputs."alea-0_1_0".repo  = "alea";
  inputs."alea-0_1_0".type  = "github";
  inputs."alea-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alea-0_1_1".dir   = "0_1_1";
  inputs."alea-0_1_1".owner = "nim-nix-pkgs";
  inputs."alea-0_1_1".ref   = "master";
  inputs."alea-0_1_1".repo  = "alea";
  inputs."alea-0_1_1".type  = "github";
  inputs."alea-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alea-0_1_2".dir   = "0_1_2";
  inputs."alea-0_1_2".owner = "nim-nix-pkgs";
  inputs."alea-0_1_2".ref   = "master";
  inputs."alea-0_1_2".repo  = "alea";
  inputs."alea-0_1_2".type  = "github";
  inputs."alea-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alea-0_1_3".dir   = "0_1_3";
  inputs."alea-0_1_3".owner = "nim-nix-pkgs";
  inputs."alea-0_1_3".ref   = "master";
  inputs."alea-0_1_3".repo  = "alea";
  inputs."alea-0_1_3".type  = "github";
  inputs."alea-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alea-0_1_4".dir   = "0_1_4";
  inputs."alea-0_1_4".owner = "nim-nix-pkgs";
  inputs."alea-0_1_4".ref   = "master";
  inputs."alea-0_1_4".repo  = "alea";
  inputs."alea-0_1_4".type  = "github";
  inputs."alea-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alea-0_1_5".dir   = "0_1_5";
  inputs."alea-0_1_5".owner = "nim-nix-pkgs";
  inputs."alea-0_1_5".ref   = "master";
  inputs."alea-0_1_5".repo  = "alea";
  inputs."alea-0_1_5".type  = "github";
  inputs."alea-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alea-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bluu-master".dir   = "master";
  inputs."bluu-master".owner = "nim-nix-pkgs";
  inputs."bluu-master".ref   = "master";
  inputs."bluu-master".repo  = "bluu";
  inputs."bluu-master".type  = "github";
  inputs."bluu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_1".dir   = "0_0_1";
  inputs."bluu-0_0_1".owner = "nim-nix-pkgs";
  inputs."bluu-0_0_1".ref   = "master";
  inputs."bluu-0_0_1".repo  = "bluu";
  inputs."bluu-0_0_1".type  = "github";
  inputs."bluu-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_2".dir   = "0_0_2";
  inputs."bluu-0_0_2".owner = "nim-nix-pkgs";
  inputs."bluu-0_0_2".ref   = "master";
  inputs."bluu-0_0_2".repo  = "bluu";
  inputs."bluu-0_0_2".type  = "github";
  inputs."bluu-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_3".dir   = "0_0_3";
  inputs."bluu-0_0_3".owner = "nim-nix-pkgs";
  inputs."bluu-0_0_3".ref   = "master";
  inputs."bluu-0_0_3".repo  = "bluu";
  inputs."bluu-0_0_3".type  = "github";
  inputs."bluu-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_4".dir   = "0_0_4";
  inputs."bluu-0_0_4".owner = "nim-nix-pkgs";
  inputs."bluu-0_0_4".ref   = "master";
  inputs."bluu-0_0_4".repo  = "bluu";
  inputs."bluu-0_0_4".type  = "github";
  inputs."bluu-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_5".dir   = "0_0_5";
  inputs."bluu-0_0_5".owner = "nim-nix-pkgs";
  inputs."bluu-0_0_5".ref   = "master";
  inputs."bluu-0_0_5".repo  = "bluu";
  inputs."bluu-0_0_5".type  = "github";
  inputs."bluu-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bluu-0_0_6".dir   = "0_0_6";
  inputs."bluu-0_0_6".owner = "nim-nix-pkgs";
  inputs."bluu-0_0_6".ref   = "master";
  inputs."bluu-0_0_6".repo  = "bluu";
  inputs."bluu-0_0_6".type  = "github";
  inputs."bluu-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bluu-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
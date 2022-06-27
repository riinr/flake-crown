{
  description = ''Universal Rhythm-Game File parser and converter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rconv-develop".dir   = "develop";
  inputs."rconv-develop".owner = "nim-nix-pkgs";
  inputs."rconv-develop".ref   = "master";
  inputs."rconv-develop".repo  = "rconv";
  inputs."rconv-develop".type  = "github";
  inputs."rconv-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rconv-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rconv-master".dir   = "master";
  inputs."rconv-master".owner = "nim-nix-pkgs";
  inputs."rconv-master".ref   = "master";
  inputs."rconv-master".repo  = "rconv";
  inputs."rconv-master".type  = "github";
  inputs."rconv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rconv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rconv-v0_1_0".dir   = "v0_1_0";
  inputs."rconv-v0_1_0".owner = "nim-nix-pkgs";
  inputs."rconv-v0_1_0".ref   = "master";
  inputs."rconv-v0_1_0".repo  = "rconv";
  inputs."rconv-v0_1_0".type  = "github";
  inputs."rconv-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rconv-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
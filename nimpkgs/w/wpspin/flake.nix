{
  description = ''Full-featured WPS PIN generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wpspin-master".dir   = "master";
  inputs."wpspin-master".owner = "nim-nix-pkgs";
  inputs."wpspin-master".ref   = "master";
  inputs."wpspin-master".repo  = "wpspin";
  inputs."wpspin-master".type  = "github";
  inputs."wpspin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wpspin-0_3_0".dir   = "0_3_0";
  inputs."wpspin-0_3_0".owner = "nim-nix-pkgs";
  inputs."wpspin-0_3_0".ref   = "master";
  inputs."wpspin-0_3_0".repo  = "wpspin";
  inputs."wpspin-0_3_0".type  = "github";
  inputs."wpspin-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wpspin-0_5_0".dir   = "0_5_0";
  inputs."wpspin-0_5_0".owner = "nim-nix-pkgs";
  inputs."wpspin-0_5_0".ref   = "master";
  inputs."wpspin-0_5_0".repo  = "wpspin";
  inputs."wpspin-0_5_0".type  = "github";
  inputs."wpspin-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wpspin-0_5_1".dir   = "0_5_1";
  inputs."wpspin-0_5_1".owner = "nim-nix-pkgs";
  inputs."wpspin-0_5_1".ref   = "master";
  inputs."wpspin-0_5_1".repo  = "wpspin";
  inputs."wpspin-0_5_1".type  = "github";
  inputs."wpspin-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
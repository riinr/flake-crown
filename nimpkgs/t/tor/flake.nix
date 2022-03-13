{
  description = ''Tor helper library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tor-master".dir   = "master";
  inputs."tor-master".owner = "nim-nix-pkgs";
  inputs."tor-master".ref   = "master";
  inputs."tor-master".repo  = "tor";
  inputs."tor-master".type  = "github";
  inputs."tor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tor-0_1_0".dir   = "0_1_0";
  inputs."tor-0_1_0".owner = "nim-nix-pkgs";
  inputs."tor-0_1_0".ref   = "master";
  inputs."tor-0_1_0".repo  = "tor";
  inputs."tor-0_1_0".type  = "github";
  inputs."tor-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tor-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tor-0_2_0".dir   = "0_2_0";
  inputs."tor-0_2_0".owner = "nim-nix-pkgs";
  inputs."tor-0_2_0".ref   = "master";
  inputs."tor-0_2_0".repo  = "tor";
  inputs."tor-0_2_0".type  = "github";
  inputs."tor-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tor-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
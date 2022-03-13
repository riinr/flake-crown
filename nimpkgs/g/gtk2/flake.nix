{
  description = ''Wrapper for gtk2, a feature rich toolkit for creating graphical user interfaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gtk2-master".dir   = "master";
  inputs."gtk2-master".owner = "nim-nix-pkgs";
  inputs."gtk2-master".ref   = "master";
  inputs."gtk2-master".repo  = "gtk2";
  inputs."gtk2-master".type  = "github";
  inputs."gtk2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2-v1_0".dir   = "v1_0";
  inputs."gtk2-v1_0".owner = "nim-nix-pkgs";
  inputs."gtk2-v1_0".ref   = "master";
  inputs."gtk2-v1_0".repo  = "gtk2";
  inputs."gtk2-v1_0".type  = "github";
  inputs."gtk2-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2-v1_2".dir   = "v1_2";
  inputs."gtk2-v1_2".owner = "nim-nix-pkgs";
  inputs."gtk2-v1_2".ref   = "master";
  inputs."gtk2-v1_2".repo  = "gtk2";
  inputs."gtk2-v1_2".type  = "github";
  inputs."gtk2-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gtk2-v1_3".dir   = "v1_3";
  inputs."gtk2-v1_3".owner = "nim-nix-pkgs";
  inputs."gtk2-v1_3".ref   = "master";
  inputs."gtk2-v1_3".repo  = "gtk2";
  inputs."gtk2-v1_3".type  = "github";
  inputs."gtk2-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gtk2-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
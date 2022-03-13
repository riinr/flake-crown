{
  description = ''a couchDB client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mycouch-main".dir   = "main";
  inputs."mycouch-main".owner = "nim-nix-pkgs";
  inputs."mycouch-main".ref   = "master";
  inputs."mycouch-main".repo  = "mycouch";
  inputs."mycouch-main".type  = "github";
  inputs."mycouch-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mycouch-0_2".dir   = "0_2";
  inputs."mycouch-0_2".owner = "nim-nix-pkgs";
  inputs."mycouch-0_2".ref   = "master";
  inputs."mycouch-0_2".repo  = "mycouch";
  inputs."mycouch-0_2".type  = "github";
  inputs."mycouch-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mycouch-0_4_0".dir   = "0_4_0";
  inputs."mycouch-0_4_0".owner = "nim-nix-pkgs";
  inputs."mycouch-0_4_0".ref   = "master";
  inputs."mycouch-0_4_0".repo  = "mycouch";
  inputs."mycouch-0_4_0".type  = "github";
  inputs."mycouch-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mycouch-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
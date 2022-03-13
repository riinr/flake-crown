{
  description = ''React.js 16.x bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."react16-master".dir   = "master";
  inputs."react16-master".owner = "nim-nix-pkgs";
  inputs."react16-master".ref   = "master";
  inputs."react16-master".repo  = "react16";
  inputs."react16-master".type  = "github";
  inputs."react16-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_1".dir   = "0_3_1";
  inputs."react16-0_3_1".owner = "nim-nix-pkgs";
  inputs."react16-0_3_1".ref   = "master";
  inputs."react16-0_3_1".repo  = "react16";
  inputs."react16-0_3_1".type  = "github";
  inputs."react16-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_2".dir   = "0_3_2";
  inputs."react16-0_3_2".owner = "nim-nix-pkgs";
  inputs."react16-0_3_2".ref   = "master";
  inputs."react16-0_3_2".repo  = "react16";
  inputs."react16-0_3_2".type  = "github";
  inputs."react16-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_3".dir   = "0_3_3";
  inputs."react16-0_3_3".owner = "nim-nix-pkgs";
  inputs."react16-0_3_3".ref   = "master";
  inputs."react16-0_3_3".repo  = "react16";
  inputs."react16-0_3_3".type  = "github";
  inputs."react16-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_4".dir   = "0_3_4";
  inputs."react16-0_3_4".owner = "nim-nix-pkgs";
  inputs."react16-0_3_4".ref   = "master";
  inputs."react16-0_3_4".repo  = "react16";
  inputs."react16-0_3_4".type  = "github";
  inputs."react16-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_5".dir   = "0_3_5";
  inputs."react16-0_3_5".owner = "nim-nix-pkgs";
  inputs."react16-0_3_5".ref   = "master";
  inputs."react16-0_3_5".repo  = "react16";
  inputs."react16-0_3_5".type  = "github";
  inputs."react16-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-0_3_6".dir   = "0_3_6";
  inputs."react16-0_3_6".owner = "nim-nix-pkgs";
  inputs."react16-0_3_6".ref   = "master";
  inputs."react16-0_3_6".repo  = "react16";
  inputs."react16-0_3_6".type  = "github";
  inputs."react16-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react16-v0_3_7".dir   = "v0_3_7";
  inputs."react16-v0_3_7".owner = "nim-nix-pkgs";
  inputs."react16-v0_3_7".ref   = "master";
  inputs."react16-v0_3_7".repo  = "react16";
  inputs."react16-v0_3_7".type  = "github";
  inputs."react16-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react16-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
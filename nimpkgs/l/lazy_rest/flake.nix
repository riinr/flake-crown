{
  description = ''Simple reST HTML generation with some extras.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lazy_rest-master".dir   = "master";
  inputs."lazy_rest-master".owner = "nim-nix-pkgs";
  inputs."lazy_rest-master".ref   = "master";
  inputs."lazy_rest-master".repo  = "lazy_rest";
  inputs."lazy_rest-master".type  = "github";
  inputs."lazy_rest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazy_rest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lazy_rest-v0_2_0".dir   = "v0_2_0";
  inputs."lazy_rest-v0_2_0".owner = "nim-nix-pkgs";
  inputs."lazy_rest-v0_2_0".ref   = "master";
  inputs."lazy_rest-v0_2_0".repo  = "lazy_rest";
  inputs."lazy_rest-v0_2_0".type  = "github";
  inputs."lazy_rest-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazy_rest-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lazy_rest-v0_2_2".dir   = "v0_2_2";
  inputs."lazy_rest-v0_2_2".owner = "nim-nix-pkgs";
  inputs."lazy_rest-v0_2_2".ref   = "master";
  inputs."lazy_rest-v0_2_2".repo  = "lazy_rest";
  inputs."lazy_rest-v0_2_2".type  = "github";
  inputs."lazy_rest-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazy_rest-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Text parsing utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hparse-master".dir   = "master";
  inputs."hparse-master".owner = "nim-nix-pkgs";
  inputs."hparse-master".ref   = "master";
  inputs."hparse-master".repo  = "hparse";
  inputs."hparse-master".type  = "github";
  inputs."hparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse-v0_2_4".dir   = "v0_2_4";
  inputs."hparse-v0_2_4".owner = "nim-nix-pkgs";
  inputs."hparse-v0_2_4".ref   = "master";
  inputs."hparse-v0_2_4".repo  = "hparse";
  inputs."hparse-v0_2_4".type  = "github";
  inputs."hparse-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse-v0_2_5".dir   = "v0_2_5";
  inputs."hparse-v0_2_5".owner = "nim-nix-pkgs";
  inputs."hparse-v0_2_5".ref   = "master";
  inputs."hparse-v0_2_5".repo  = "hparse";
  inputs."hparse-v0_2_5".type  = "github";
  inputs."hparse-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hparse-v0_2_6".dir   = "v0_2_6";
  inputs."hparse-v0_2_6".owner = "nim-nix-pkgs";
  inputs."hparse-v0_2_6".ref   = "master";
  inputs."hparse-v0_2_6".repo  = "hparse";
  inputs."hparse-v0_2_6".type  = "github";
  inputs."hparse-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hparse-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
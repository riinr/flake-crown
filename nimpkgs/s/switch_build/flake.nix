{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."switch_build-master".dir   = "master";
  inputs."switch_build-master".owner = "nim-nix-pkgs";
  inputs."switch_build-master".ref   = "master";
  inputs."switch_build-master".repo  = "switch_build";
  inputs."switch_build-master".type  = "github";
  inputs."switch_build-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch_build-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."switch_build-0_1_2".dir   = "0_1_2";
  inputs."switch_build-0_1_2".owner = "nim-nix-pkgs";
  inputs."switch_build-0_1_2".ref   = "master";
  inputs."switch_build-0_1_2".repo  = "switch_build";
  inputs."switch_build-0_1_2".type  = "github";
  inputs."switch_build-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch_build-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
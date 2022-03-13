{
  description = ''funchook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."funchook-master".dir   = "master";
  inputs."funchook-master".owner = "nim-nix-pkgs";
  inputs."funchook-master".ref   = "master";
  inputs."funchook-master".repo  = "funchook";
  inputs."funchook-master".type  = "github";
  inputs."funchook-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."funchook-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."funchook-0_1_1".dir   = "0_1_1";
  inputs."funchook-0_1_1".owner = "nim-nix-pkgs";
  inputs."funchook-0_1_1".ref   = "master";
  inputs."funchook-0_1_1".repo  = "funchook";
  inputs."funchook-0_1_1".type  = "github";
  inputs."funchook-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."funchook-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."funchook-0_1_2".dir   = "0_1_2";
  inputs."funchook-0_1_2".owner = "nim-nix-pkgs";
  inputs."funchook-0_1_2".ref   = "master";
  inputs."funchook-0_1_2".repo  = "funchook";
  inputs."funchook-0_1_2".type  = "github";
  inputs."funchook-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."funchook-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
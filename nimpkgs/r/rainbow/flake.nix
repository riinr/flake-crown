{
  description = ''256 colors for shell'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rainbow-master".dir   = "master";
  inputs."rainbow-master".owner = "nim-nix-pkgs";
  inputs."rainbow-master".ref   = "master";
  inputs."rainbow-master".repo  = "rainbow";
  inputs."rainbow-master".type  = "github";
  inputs."rainbow-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_0".dir   = "v0_2_0";
  inputs."rainbow-v0_2_0".owner = "nim-nix-pkgs";
  inputs."rainbow-v0_2_0".ref   = "master";
  inputs."rainbow-v0_2_0".repo  = "rainbow";
  inputs."rainbow-v0_2_0".type  = "github";
  inputs."rainbow-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_1".dir   = "v0_2_1";
  inputs."rainbow-v0_2_1".owner = "nim-nix-pkgs";
  inputs."rainbow-v0_2_1".ref   = "master";
  inputs."rainbow-v0_2_1".repo  = "rainbow";
  inputs."rainbow-v0_2_1".type  = "github";
  inputs."rainbow-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_2".dir   = "v0_2_2";
  inputs."rainbow-v0_2_2".owner = "nim-nix-pkgs";
  inputs."rainbow-v0_2_2".ref   = "master";
  inputs."rainbow-v0_2_2".repo  = "rainbow";
  inputs."rainbow-v0_2_2".type  = "github";
  inputs."rainbow-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow-v0_2_3".dir   = "v0_2_3";
  inputs."rainbow-v0_2_3".owner = "nim-nix-pkgs";
  inputs."rainbow-v0_2_3".ref   = "master";
  inputs."rainbow-v0_2_3".repo  = "rainbow";
  inputs."rainbow-v0_2_3".type  = "github";
  inputs."rainbow-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
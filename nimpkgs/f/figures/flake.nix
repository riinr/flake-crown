{
  description = ''unicode symbols'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."figures-master".dir   = "master";
  inputs."figures-master".owner = "nim-nix-pkgs";
  inputs."figures-master".ref   = "master";
  inputs."figures-master".repo  = "figures";
  inputs."figures-master".type  = "github";
  inputs."figures-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."figures-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."figures-v1_0_0".dir   = "v1_0_0";
  inputs."figures-v1_0_0".owner = "nim-nix-pkgs";
  inputs."figures-v1_0_0".ref   = "master";
  inputs."figures-v1_0_0".repo  = "figures";
  inputs."figures-v1_0_0".type  = "github";
  inputs."figures-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."figures-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."figures-v1_1_0".dir   = "v1_1_0";
  inputs."figures-v1_1_0".owner = "nim-nix-pkgs";
  inputs."figures-v1_1_0".ref   = "master";
  inputs."figures-v1_1_0".repo  = "figures";
  inputs."figures-v1_1_0".type  = "github";
  inputs."figures-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."figures-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."figures-v1_2_0".dir   = "v1_2_0";
  inputs."figures-v1_2_0".owner = "nim-nix-pkgs";
  inputs."figures-v1_2_0".ref   = "master";
  inputs."figures-v1_2_0".repo  = "figures";
  inputs."figures-v1_2_0".type  = "github";
  inputs."figures-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."figures-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
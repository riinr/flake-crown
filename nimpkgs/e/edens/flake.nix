{
  description = ''A command to encode / decode text with your dictionary'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."edens-master".dir   = "master";
  inputs."edens-master".owner = "nim-nix-pkgs";
  inputs."edens-master".ref   = "master";
  inputs."edens-master".repo  = "edens";
  inputs."edens-master".type  = "github";
  inputs."edens-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edens-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."edens-1_0_0".dir   = "1_0_0";
  inputs."edens-1_0_0".owner = "nim-nix-pkgs";
  inputs."edens-1_0_0".ref   = "master";
  inputs."edens-1_0_0".repo  = "edens";
  inputs."edens-1_0_0".type  = "github";
  inputs."edens-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edens-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
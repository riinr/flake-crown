{
  description = ''A library that will add useful tools to Nim's arsenal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."extensions-master".dir   = "master";
  inputs."extensions-master".owner = "nim-nix-pkgs";
  inputs."extensions-master".ref   = "master";
  inputs."extensions-master".repo  = "extensions";
  inputs."extensions-master".type  = "github";
  inputs."extensions-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."extensions-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."extensions-0_2_0".dir   = "0_2_0";
  inputs."extensions-0_2_0".owner = "nim-nix-pkgs";
  inputs."extensions-0_2_0".ref   = "master";
  inputs."extensions-0_2_0".repo  = "extensions";
  inputs."extensions-0_2_0".type  = "github";
  inputs."extensions-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."extensions-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
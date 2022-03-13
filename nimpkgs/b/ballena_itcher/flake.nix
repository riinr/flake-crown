{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ballena_itcher-master".dir   = "master";
  inputs."ballena_itcher-master".owner = "nim-nix-pkgs";
  inputs."ballena_itcher-master".ref   = "master";
  inputs."ballena_itcher-master".repo  = "ballena_itcher";
  inputs."ballena_itcher-master".type  = "github";
  inputs."ballena_itcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballena_itcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ballena_itcher-0_0_1".dir   = "0_0_1";
  inputs."ballena_itcher-0_0_1".owner = "nim-nix-pkgs";
  inputs."ballena_itcher-0_0_1".ref   = "master";
  inputs."ballena_itcher-0_0_1".repo  = "ballena_itcher";
  inputs."ballena_itcher-0_0_1".type  = "github";
  inputs."ballena_itcher-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballena_itcher-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
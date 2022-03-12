{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ballena_itcher-master".url = "path:./master";
  inputs."ballena_itcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballena_itcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ballena_itcher-0_0_1".url = "path:./0_0_1";
  inputs."ballena_itcher-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ballena_itcher-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
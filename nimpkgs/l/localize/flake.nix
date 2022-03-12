{
  description = ''Compile time localization for applications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."localize-master".url = "path:./master";
  inputs."localize-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."localize-0_1".url = "path:./0_1";
  inputs."localize-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."localize-0_2".url = "path:./0_2";
  inputs."localize-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."localize-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Native Nim Zend API glue for easy PHP extension development.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimzend-master".dir   = "master";
  inputs."nimzend-master".owner = "nim-nix-pkgs";
  inputs."nimzend-master".ref   = "master";
  inputs."nimzend-master".repo  = "nimzend";
  inputs."nimzend-master".type  = "github";
  inputs."nimzend-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzend-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
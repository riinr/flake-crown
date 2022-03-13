{
  description = ''A library to hide data in images. Usable as library or cli tool.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimagehide-master".dir   = "master";
  inputs."nimagehide-master".owner = "nim-nix-pkgs";
  inputs."nimagehide-master".ref   = "master";
  inputs."nimagehide-master".repo  = "nimagehide";
  inputs."nimagehide-master".type  = "github";
  inputs."nimagehide-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimagehide-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
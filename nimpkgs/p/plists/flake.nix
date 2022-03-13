{
  description = ''Generate and parse Mac OS X .plist files in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."plists-master".dir   = "master";
  inputs."plists-master".owner = "nim-nix-pkgs";
  inputs."plists-master".ref   = "master";
  inputs."plists-master".repo  = "plists";
  inputs."plists-master".type  = "github";
  inputs."plists-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plists-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
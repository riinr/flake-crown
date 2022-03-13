{
  description = ''Bindings for the InterSense SDK'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."isense-master".dir   = "master";
  inputs."isense-master".owner = "nim-nix-pkgs";
  inputs."isense-master".ref   = "master";
  inputs."isense-master".repo  = "isense";
  inputs."isense-master".type  = "github";
  inputs."isense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."isense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''oracle odpi-c wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimodpi-master".dir   = "master";
  inputs."nimodpi-master".owner = "nim-nix-pkgs";
  inputs."nimodpi-master".ref   = "master";
  inputs."nimodpi-master".repo  = "nimodpi";
  inputs."nimodpi-master".type  = "github";
  inputs."nimodpi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimodpi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
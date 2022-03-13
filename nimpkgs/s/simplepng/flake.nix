{
  description = ''high level simple way to write PNGs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simplepng-master".dir   = "master";
  inputs."simplepng-master".owner = "nim-nix-pkgs";
  inputs."simplepng-master".ref   = "master";
  inputs."simplepng-master".repo  = "simplepng";
  inputs."simplepng-master".type  = "github";
  inputs."simplepng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplepng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
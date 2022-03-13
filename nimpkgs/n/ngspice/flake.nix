{
  description = ''Analog electronic circuit simiulator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ngspice-master".dir   = "master";
  inputs."ngspice-master".owner = "nim-nix-pkgs";
  inputs."ngspice-master".ref   = "master";
  inputs."ngspice-master".repo  = "ngspice";
  inputs."ngspice-master".type  = "github";
  inputs."ngspice-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngspice-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
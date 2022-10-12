{
  description = ''ShiftField type and sugar for c-style shift bitfields in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shiftfields-master".dir   = "master";
  inputs."shiftfields-master".owner = "nim-nix-pkgs";
  inputs."shiftfields-master".ref   = "master";
  inputs."shiftfields-master".repo  = "shiftfields";
  inputs."shiftfields-master".type  = "github";
  inputs."shiftfields-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shiftfields-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
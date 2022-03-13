{
  description = ''A string formatting library inspired by Python's `format`.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."strfmt-master".dir   = "master";
  inputs."strfmt-master".owner = "nim-nix-pkgs";
  inputs."strfmt-master".ref   = "master";
  inputs."strfmt-master".repo  = "strfmt";
  inputs."strfmt-master".type  = "github";
  inputs."strfmt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
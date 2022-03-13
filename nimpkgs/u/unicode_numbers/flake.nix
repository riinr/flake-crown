{
  description = ''Converts a number into a specially formatted Unicode string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unicode_numbers-master".dir   = "master";
  inputs."unicode_numbers-master".owner = "nim-nix-pkgs";
  inputs."unicode_numbers-master".ref   = "master";
  inputs."unicode_numbers-master".repo  = "unicode_numbers";
  inputs."unicode_numbers-master".type  = "github";
  inputs."unicode_numbers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicode_numbers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
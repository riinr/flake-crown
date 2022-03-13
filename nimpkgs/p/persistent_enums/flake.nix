{
  description = ''Define enums which values preserve their binary representation upon inserting or reordering'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."persistent_enums-master".dir   = "master";
  inputs."persistent_enums-master".owner = "nim-nix-pkgs";
  inputs."persistent_enums-master".ref   = "master";
  inputs."persistent_enums-master".repo  = "persistent_enums";
  inputs."persistent_enums-master".type  = "github";
  inputs."persistent_enums-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."persistent_enums-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
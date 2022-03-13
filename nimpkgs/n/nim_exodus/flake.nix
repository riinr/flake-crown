{
  description = ''Template generator for gester'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_exodus-master".dir   = "master";
  inputs."nim_exodus-master".owner = "nim-nix-pkgs";
  inputs."nim_exodus-master".ref   = "master";
  inputs."nim_exodus-master".repo  = "nim_exodus";
  inputs."nim_exodus-master".type  = "github";
  inputs."nim_exodus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_exodus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
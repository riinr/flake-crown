{
  description = ''Nim library for One Time Password verification and generation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nauthy-master".dir   = "master";
  inputs."nauthy-master".owner = "nim-nix-pkgs";
  inputs."nauthy-master".ref   = "master";
  inputs."nauthy-master".repo  = "nauthy";
  inputs."nauthy-master".type  = "github";
  inputs."nauthy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nauthy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
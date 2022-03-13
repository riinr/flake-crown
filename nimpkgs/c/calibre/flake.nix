{
  description = ''Calibre Database Lib for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."calibre-master".dir   = "master";
  inputs."calibre-master".owner = "nim-nix-pkgs";
  inputs."calibre-master".ref   = "master";
  inputs."calibre-master".repo  = "calibre";
  inputs."calibre-master".type  = "github";
  inputs."calibre-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."calibre-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
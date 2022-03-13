{
  description = ''Nim port of Python's spwd module for working with the UNIX shadow password file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spwd-master".dir   = "master";
  inputs."spwd-master".owner = "nim-nix-pkgs";
  inputs."spwd-master".ref   = "master";
  inputs."spwd-master".repo  = "spwd";
  inputs."spwd-master".type  = "github";
  inputs."spwd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spwd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
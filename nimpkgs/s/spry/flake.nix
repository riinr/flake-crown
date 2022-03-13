{
  description = ''A Smalltalk and Rebol inspired language implemented as an AST interpreter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spry-master".dir   = "master";
  inputs."spry-master".owner = "nim-nix-pkgs";
  inputs."spry-master".ref   = "master";
  inputs."spry-master".repo  = "spry";
  inputs."spry-master".type  = "github";
  inputs."spry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
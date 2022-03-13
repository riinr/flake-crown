{
  description = ''Wrapper for the FreeImage library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."freeimage-master".dir   = "master";
  inputs."freeimage-master".owner = "nim-nix-pkgs";
  inputs."freeimage-master".ref   = "master";
  inputs."freeimage-master".repo  = "freeimage";
  inputs."freeimage-master".type  = "github";
  inputs."freeimage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freeimage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
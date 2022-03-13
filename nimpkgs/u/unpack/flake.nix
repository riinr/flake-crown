{
  description = ''Array/Sequence/Object destructuring/unpacking macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unpack-master".dir   = "master";
  inputs."unpack-master".owner = "nim-nix-pkgs";
  inputs."unpack-master".ref   = "master";
  inputs."unpack-master".repo  = "unpack";
  inputs."unpack-master".type  = "github";
  inputs."unpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
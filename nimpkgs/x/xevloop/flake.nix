{
  description = ''Library to more easily create X11 event loops'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xevloop-master".dir   = "master";
  inputs."xevloop-master".owner = "nim-nix-pkgs";
  inputs."xevloop-master".ref   = "master";
  inputs."xevloop-master".repo  = "xevloop";
  inputs."xevloop-master".type  = "github";
  inputs."xevloop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xevloop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
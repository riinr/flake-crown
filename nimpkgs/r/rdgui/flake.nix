{
  description = ''A modular GUI toolkit for rapid'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rdgui-master".dir   = "master";
  inputs."rdgui-master".owner = "nim-nix-pkgs";
  inputs."rdgui-master".ref   = "master";
  inputs."rdgui-master".repo  = "rdgui";
  inputs."rdgui-master".type  = "github";
  inputs."rdgui-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rdgui-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
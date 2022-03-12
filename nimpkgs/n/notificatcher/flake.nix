{
  description = ''Small program to grab notifications from freedesktop and output them according to a format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notificatcher-master".url = "path:./master";
  inputs."notificatcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notificatcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notificatcher-v0_2_0".url = "path:./v0_2_0";
  inputs."notificatcher-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notificatcher-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."notificatcher-v0_3_0".url = "path:./v0_3_0";
  inputs."notificatcher-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notificatcher-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
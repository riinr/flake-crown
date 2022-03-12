{
  description = ''High level wrapper for build nginx module w/ nginx-c-function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ngxcmod-master".url = "path:./master";
  inputs."ngxcmod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngxcmod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ngxcmod-0_1_2".url = "path:./0_1_2";
  inputs."ngxcmod-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ngxcmod-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
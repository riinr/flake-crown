{
  description = ''An advanced parsing library for mathematical expressions and equations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimkalc-main".url = "path:./main";
  inputs."nimkalc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkalc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimkalc-master".url = "path:./master";
  inputs."nimkalc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkalc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
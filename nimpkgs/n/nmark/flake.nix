{
  description = ''fast markdown parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nmark-develop".url = "path:./develop";
  inputs."nmark-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmark-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmark-master".url = "path:./master";
  inputs."nmark-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmark-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
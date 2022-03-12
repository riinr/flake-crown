{
  description = ''RESTful URI router'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nest-develop".url = "path:./develop";
  inputs."nest-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nest-master".url = "path:./master";
  inputs."nest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
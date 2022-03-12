{
  description = ''a simple test framework for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsuite-develop".url = "path:./develop";
  inputs."nimsuite-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsuite-master".url = "path:./master";
  inputs."nimsuite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsuite-0_1_0".url = "path:./0_1_0";
  inputs."nimsuite-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsuite-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
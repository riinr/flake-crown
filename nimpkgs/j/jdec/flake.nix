{
  description = ''Flexible JSON manshal/unmarshal library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jdec-develop".url = "path:./develop";
  inputs."jdec-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jdec-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jdec-master".url = "path:./master";
  inputs."jdec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jdec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jdec-v0_1_0".url = "path:./v0_1_0";
  inputs."jdec-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jdec-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
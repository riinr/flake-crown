{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nbaser-archive/develop".url = "path:./archive/develop";
  inputs."nbaser-archive/develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-archive/develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-develop".url = "path:./develop";
  inputs."nbaser-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-master".url = "path:./master";
  inputs."nbaser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-v1_0_0".url = "path:./v1_0_0";
  inputs."nbaser-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nbaser-v1_0_1".url = "path:./v1_0_1";
  inputs."nbaser-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nbaser-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
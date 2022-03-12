{
  description = ''Netty is a reliable UDP connection for games.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."netty-master".url = "path:./master";
  inputs."netty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty-0_2_0".url = "path:./0_2_0";
  inputs."netty-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty-0_2_1".url = "path:./0_2_1";
  inputs."netty-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty-v0_1_0".url = "path:./v0_1_0";
  inputs."netty-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
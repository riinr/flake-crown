{
  description = ''Wrapper of the libtcod library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libtcod_nim-master".url = "path:./master";
  inputs."libtcod_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_9".url = "path:./v0_9";
  inputs."libtcod_nim-v0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_95".url = "path:./v0_95";
  inputs."libtcod_nim-v0_95".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_95".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_96".url = "path:./v0_96";
  inputs."libtcod_nim-v0_96".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_96".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_97".url = "path:./v0_97";
  inputs."libtcod_nim-v0_97".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_97".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_98".url = "path:./v0_98";
  inputs."libtcod_nim-v0_98".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_98".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_98_1".url = "path:./v0_98_1";
  inputs."libtcod_nim-v0_98_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_98_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v0_99".url = "path:./v0_99";
  inputs."libtcod_nim-v0_99".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v0_99".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v1_112_0".url = "path:./v1_112_0";
  inputs."libtcod_nim-v1_112_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v1_112_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libtcod_nim-v1_112_1".url = "path:./v1_112_1";
  inputs."libtcod_nim-v1_112_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libtcod_nim-v1_112_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
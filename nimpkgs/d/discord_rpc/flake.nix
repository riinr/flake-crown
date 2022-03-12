{
  description = ''Discord RPC/Rich Presence client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."discord_rpc-master".url = "path:./master";
  inputs."discord_rpc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord_rpc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."discord_rpc-v0_1_0".url = "path:./v0_1_0";
  inputs."discord_rpc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord_rpc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."discord_rpc-v0_1_1".url = "path:./v0_1_1";
  inputs."discord_rpc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discord_rpc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Websockets wrapper for nim js backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jswebsockets-master".url = "path:./master";
  inputs."jswebsockets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jswebsockets-0_1_2".url = "path:./0_1_2";
  inputs."jswebsockets-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jswebsockets-0_1_3".url = "path:./0_1_3";
  inputs."jswebsockets-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jswebsockets-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
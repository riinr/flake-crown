{
  description = ''A simple PubSub framework using STOMP.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cittadino-master".url = "path:./master";
  inputs."cittadino-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_0".url = "path:./0_1_0";
  inputs."cittadino-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_1".url = "path:./0_1_1";
  inputs."cittadino-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_2".url = "path:./0_1_2";
  inputs."cittadino-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cittadino-0_1_4".url = "path:./0_1_4";
  inputs."cittadino-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cittadino-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
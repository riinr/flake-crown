{
  description = ''A SLow And Powerless programming language written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slap-master".url = "path:./master";
  inputs."slap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slap-0_0_1".url = "path:./0_0_1";
  inputs."slap-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slap-0_0_2".url = "path:./0_0_2";
  inputs."slap-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slap-0_0_3".url = "path:./0_0_3";
  inputs."slap-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slap-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
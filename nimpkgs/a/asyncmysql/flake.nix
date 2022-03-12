{
  description = ''Asynchronous MySQL connector written in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncmysql-master".url = "path:./master";
  inputs."asyncmysql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncmysql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncmysql-0_4_3".url = "path:./0_4_3";
  inputs."asyncmysql-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncmysql-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
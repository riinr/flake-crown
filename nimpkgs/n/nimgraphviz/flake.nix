{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgraphviz-master".url = "path:./master";
  inputs."nimgraphviz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphviz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgraphviz-v3_0".url = "path:./v3_0";
  inputs."nimgraphviz-v3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphviz-v3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
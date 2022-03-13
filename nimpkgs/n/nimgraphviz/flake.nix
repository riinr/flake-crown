{
  description = ''Nim bindings for the GraphViz tool and the DOT graph language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgraphviz-master".dir   = "master";
  inputs."nimgraphviz-master".owner = "nim-nix-pkgs";
  inputs."nimgraphviz-master".ref   = "master";
  inputs."nimgraphviz-master".repo  = "nimgraphviz";
  inputs."nimgraphviz-master".type  = "github";
  inputs."nimgraphviz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgraphviz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgraphviz-v3_0".dir   = "v3_0";
  inputs."nimgraphviz-v3_0".owner = "nim-nix-pkgs";
  inputs."nimgraphviz-v3_0".ref   = "master";
  inputs."nimgraphviz-v3_0".repo  = "nimgraphviz";
  inputs."nimgraphviz-v3_0".type  = "github";
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
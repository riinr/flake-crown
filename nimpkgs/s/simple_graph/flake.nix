{
  description = ''Simple Graph Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simple_graph-master".dir   = "master";
  inputs."simple_graph-master".owner = "nim-nix-pkgs";
  inputs."simple_graph-master".ref   = "master";
  inputs."simple_graph-master".repo  = "simple_graph";
  inputs."simple_graph-master".type  = "github";
  inputs."simple_graph-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_graph-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simple_graph-v0_1_0".dir   = "v0_1_0";
  inputs."simple_graph-v0_1_0".owner = "nim-nix-pkgs";
  inputs."simple_graph-v0_1_0".ref   = "master";
  inputs."simple_graph-v0_1_0".repo  = "simple_graph";
  inputs."simple_graph-v0_1_0".type  = "github";
  inputs."simple_graph-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simple_graph-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Efficient topological sort using Kahn's algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."toposort-master".dir   = "master";
  inputs."toposort-master".owner = "nim-nix-pkgs";
  inputs."toposort-master".ref   = "master";
  inputs."toposort-master".repo  = "toposort";
  inputs."toposort-master".type  = "github";
  inputs."toposort-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toposort-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toposort-v1_0_0".dir   = "v1_0_0";
  inputs."toposort-v1_0_0".owner = "nim-nix-pkgs";
  inputs."toposort-v1_0_0".ref   = "master";
  inputs."toposort-v1_0_0".repo  = "toposort";
  inputs."toposort-v1_0_0".type  = "github";
  inputs."toposort-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toposort-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
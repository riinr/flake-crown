{
  description = ''Grid plugin for wNim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wZeeGrid-master.flake = false;
  inputs.src-wZeeGrid-master.owner = "bunkford";
  inputs.src-wZeeGrid-master.ref   = "refs/heads/master";
  inputs.src-wZeeGrid-master.repo  = "wZeeGrid";
  inputs.src-wZeeGrid-master.type  = "github";
  
  inputs."wnim".dir   = "nimpkgs/w/wnim";
  inputs."wnim".owner = "riinr";
  inputs."wnim".ref   = "flake-pinning";
  inputs."wnim".repo  = "flake-nimble";
  inputs."wnim".type  = "github";
  inputs."wnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wZeeGrid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wZeeGrid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
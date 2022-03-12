{
  description = ''a state-of-the-art multithreading runtime'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-weave-master.flake = false;
  inputs.src-weave-master.owner = "mratsim";
  inputs.src-weave-master.ref   = "refs/heads/master";
  inputs.src-weave-master.repo  = "weave";
  inputs.src-weave-master.type  = "github";
  
  inputs."synthesis".dir   = "nimpkgs/s/synthesis";
  inputs."synthesis".owner = "riinr";
  inputs."synthesis".ref   = "flake-pinning";
  inputs."synthesis".repo  = "flake-nimble";
  inputs."synthesis".type  = "github";
  inputs."synthesis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-weave-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-weave-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
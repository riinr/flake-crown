{
  description = ''A compile-time, compact, fast, without allocation, state-machine generator.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-synthesis-master.flake = false;
  inputs.src-synthesis-master.owner = "mratsim";
  inputs.src-synthesis-master.ref   = "refs/heads/master";
  inputs.src-synthesis-master.repo  = "Synthesis";
  inputs.src-synthesis-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-synthesis-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-synthesis-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
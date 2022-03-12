{
  description = ''Implementation of dual numbers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dual-master.flake = false;
  inputs.src-dual-master.owner = "drjdn";
  inputs.src-dual-master.ref   = "refs/heads/master";
  inputs.src-dual-master.repo  = "nim_dual";
  inputs.src-dual-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dual-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dual-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
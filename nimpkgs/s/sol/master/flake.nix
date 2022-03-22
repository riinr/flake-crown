{
  description = ''A portable SIMD-accelerated vector library written in C99 with Nim bindings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sol-master.flake = false;
  inputs.src-sol-master.ref   = "refs/heads/master";
  inputs.src-sol-master.owner = "davidgarland";
  inputs.src-sol-master.repo  = "sol";
  inputs.src-sol-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sol-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sol-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
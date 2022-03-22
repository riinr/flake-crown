{
  description = ''An alternative DateTime implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-systimes-master.flake = false;
  inputs.src-systimes-master.ref   = "refs/heads/master";
  inputs.src-systimes-master.owner = "GULPF";
  inputs.src-systimes-master.repo  = "systimes";
  inputs.src-systimes-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-systimes-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-systimes-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
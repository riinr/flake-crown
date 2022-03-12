{
  description = ''A simple library to generate random data, using the system's PRNG.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sysrandom-master.flake = false;
  inputs.src-sysrandom-master.owner = "euantorano";
  inputs.src-sysrandom-master.ref   = "refs/heads/master";
  inputs.src-sysrandom-master.repo  = "sysrandom.nim";
  inputs.src-sysrandom-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sysrandom-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sysrandom-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
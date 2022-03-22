{
  description = ''make-like for Nim. Describe your builds as tasks!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nake-1_9.flake = false;
  inputs.src-nake-1_9.owner = "fowlmouth";
  inputs.src-nake-1_9.ref   = "1_9";
  inputs.src-nake-1_9.repo  = "nake";
  inputs.src-nake-1_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nake-1_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nake-1_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
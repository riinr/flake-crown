{
  description = ''For loop macros for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-looper-master.flake = false;
  inputs.src-looper-master.ref   = "refs/heads/master";
  inputs.src-looper-master.owner = "planetis-m";
  inputs.src-looper-master.repo  = "looper";
  inputs.src-looper-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-looper-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-looper-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
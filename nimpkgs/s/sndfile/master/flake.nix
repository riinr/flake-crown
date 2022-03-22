{
  description = ''A wrapper of libsndfile'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sndfile-master.flake = false;
  inputs.src-sndfile-master.ref   = "refs/heads/master";
  inputs.src-sndfile-master.owner = "julienaubert";
  inputs.src-sndfile-master.repo  = "nim-sndfile";
  inputs.src-sndfile-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sndfile-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sndfile-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
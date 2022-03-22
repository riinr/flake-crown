{
  description = ''Thin interface for libFuzzer, an in-process, coverage-guided, evolutionary fuzzing engine.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libfuzzer-master.flake = false;
  inputs.src-libfuzzer-master.ref   = "refs/heads/master";
  inputs.src-libfuzzer-master.owner = "planetis-m";
  inputs.src-libfuzzer-master.repo  = "libfuzzer";
  inputs.src-libfuzzer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libfuzzer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libfuzzer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Simple implementation of string slices with some of the strutils ported or wrapped to work on them. String slices offer a performance enhancement when working with large amounts of slices from one base string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strslice-master.flake = false;
  inputs.src-strslice-master.owner = "PMunch";
  inputs.src-strslice-master.ref   = "refs/heads/master";
  inputs.src-strslice-master.repo  = "strslice";
  inputs.src-strslice-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strslice-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strslice-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
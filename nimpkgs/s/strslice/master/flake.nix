{
  description = ''Efficient string slices that works on a shared underlying string instead of copying'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strslice-master.flake = false;
  inputs.src-strslice-master.ref   = "refs/heads/master";
  inputs.src-strslice-master.owner = "PMunch";
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
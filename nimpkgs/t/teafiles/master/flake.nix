{
  description = ''TeaFiles provide fast read/write access to time series data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-teafiles-master.flake = false;
  inputs.src-teafiles-master.owner = "andreaferretti";
  inputs.src-teafiles-master.ref   = "refs/heads/master";
  inputs.src-teafiles-master.repo  = "nim-teafiles";
  inputs.src-teafiles-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-teafiles-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-teafiles-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
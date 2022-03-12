{
  description = ''TeaFiles provide fast read/write access to time series data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-teafiles-0_1_5.flake = false;
  inputs.src-teafiles-0_1_5.owner = "andreaferretti";
  inputs.src-teafiles-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-teafiles-0_1_5.repo  = "nim-teafiles";
  inputs.src-teafiles-0_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-teafiles-0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-teafiles-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
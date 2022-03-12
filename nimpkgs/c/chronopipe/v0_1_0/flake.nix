{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronopipe-v0_1_0.flake = false;
  inputs.src-chronopipe-v0_1_0.owner = "williamd1k0";
  inputs.src-chronopipe-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-chronopipe-v0_1_0.repo  = "chrono";
  inputs.src-chronopipe-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronopipe-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chronopipe-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
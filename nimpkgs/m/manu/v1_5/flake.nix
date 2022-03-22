{
  description = ''Nim Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-v1_5.flake = false;
  inputs.src-manu-v1_5.ref   = "refs/tags/v1.5";
  inputs.src-manu-v1_5.owner = "planetis-m";
  inputs.src-manu-v1_5.repo  = "manu";
  inputs.src-manu-v1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-v1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
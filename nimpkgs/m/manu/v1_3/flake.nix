{
  description = ''Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-v1_3.flake = false;
  inputs.src-manu-v1_3.owner = "planetis-m";
  inputs.src-manu-v1_3.ref   = "refs/tags/v1.3";
  inputs.src-manu-v1_3.repo  = "manu";
  inputs.src-manu-v1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-v1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
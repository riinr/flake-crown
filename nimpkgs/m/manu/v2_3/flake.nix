{
  description = ''Nim Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-v2_3.flake = false;
  inputs.src-manu-v2_3.owner = "planetis-m";
  inputs.src-manu-v2_3.ref   = "v2_3";
  inputs.src-manu-v2_3.repo  = "manu";
  inputs.src-manu-v2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-v2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
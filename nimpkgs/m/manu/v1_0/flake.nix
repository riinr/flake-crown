{
  description = ''Nim Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-v1_0.flake = false;
  inputs.src-manu-v1_0.owner = "planetis-m";
  inputs.src-manu-v1_0.ref   = "v1_0";
  inputs.src-manu-v1_0.repo  = "manu";
  inputs.src-manu-v1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-v1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
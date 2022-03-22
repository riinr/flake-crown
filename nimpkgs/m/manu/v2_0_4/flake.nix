{
  description = ''Nim Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-v2_0_4.flake = false;
  inputs.src-manu-v2_0_4.ref   = "refs/tags/v2.0.4";
  inputs.src-manu-v2_0_4.owner = "planetis-m";
  inputs.src-manu-v2_0_4.repo  = "manu";
  inputs.src-manu-v2_0_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v2_0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-v2_0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
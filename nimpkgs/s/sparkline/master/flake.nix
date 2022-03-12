{
  description = ''Sparkline library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sparkline-master.flake = false;
  inputs.src-sparkline-master.owner = "aquilax";
  inputs.src-sparkline-master.ref   = "refs/heads/master";
  inputs.src-sparkline-master.repo  = "sparkline-nim";
  inputs.src-sparkline-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sparkline-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sparkline-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
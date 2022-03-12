{
  description = ''Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-master.flake = false;
  inputs.src-manu-master.owner = "planetis-m";
  inputs.src-manu-master.ref   = "refs/heads/master";
  inputs.src-manu-master.repo  = "manu";
  inputs.src-manu-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
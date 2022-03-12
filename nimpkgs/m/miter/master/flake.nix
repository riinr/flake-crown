{
  description = ''Ratio calculator on your terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-miter-master.flake = false;
  inputs.src-miter-master.owner = "rafmst";
  inputs.src-miter-master.ref   = "refs/heads/master";
  inputs.src-miter-master.repo  = "miter";
  inputs.src-miter-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-miter-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-miter-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A Nim wrapper for the Canvas API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jscanvas-master.flake = false;
  inputs.src-jscanvas-master.ref   = "refs/heads/master";
  inputs.src-jscanvas-master.owner = "planetis-m";
  inputs.src-jscanvas-master.repo  = "jscanvas";
  inputs.src-jscanvas-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jscanvas-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jscanvas-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
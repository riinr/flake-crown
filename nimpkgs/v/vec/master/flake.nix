{
  description = ''A very simple vector library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vec-master.flake = false;
  inputs.src-vec-master.owner = "dom96";
  inputs.src-vec-master.ref   = "refs/heads/master";
  inputs.src-vec-master.repo  = "vec";
  inputs.src-vec-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vec-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vec-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
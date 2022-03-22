{
  description = ''Nim bindings for p5.js'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimp5-master.flake = false;
  inputs.src-nimp5-master.ref   = "refs/heads/master";
  inputs.src-nimp5-master.owner = "Foldover";
  inputs.src-nimp5-master.repo  = "nim-p5";
  inputs.src-nimp5-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimp5-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimp5-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
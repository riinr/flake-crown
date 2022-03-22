{
  description = ''Console ascii line charts in pure nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-asciigraph-master.flake = false;
  inputs.src-asciigraph-master.owner = "Yardanico";
  inputs.src-asciigraph-master.ref   = "master";
  inputs.src-asciigraph-master.repo  = "asciigraph";
  inputs.src-asciigraph-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-asciigraph-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-asciigraph-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
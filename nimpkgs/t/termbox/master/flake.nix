{
  description = ''Termbox wrapper.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-termbox-master.flake = false;
  inputs.src-termbox-master.ref   = "refs/heads/master";
  inputs.src-termbox-master.owner = "fowlmouth";
  inputs.src-termbox-master.repo  = "nim-termbox";
  inputs.src-termbox-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-termbox-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-termbox-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A wrapper for NCurses'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ncurses-master.flake = false;
  inputs.src-ncurses-master.owner = "walkre-niboshi";
  inputs.src-ncurses-master.ref   = "refs/heads/master";
  inputs.src-ncurses-master.repo  = "nim-ncurses";
  inputs.src-ncurses-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ncurses-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ncurses-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
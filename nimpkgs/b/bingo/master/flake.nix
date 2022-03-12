{
  description = ''Binary serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bingo-master.flake = false;
  inputs.src-bingo-master.owner = "planetis-m";
  inputs.src-bingo-master.ref   = "refs/heads/master";
  inputs.src-bingo-master.repo  = "bingo";
  inputs.src-bingo-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bingo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bingo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
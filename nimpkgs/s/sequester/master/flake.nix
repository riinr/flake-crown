{
  description = ''Library for converting sequences to strings. Also has PHP-inspired explode and implode procs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sequester-master.flake = false;
  inputs.src-sequester-master.owner = "fallingduck";
  inputs.src-sequester-master.ref   = "refs/heads/master";
  inputs.src-sequester-master.repo  = "sequester";
  inputs.src-sequester-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sequester-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sequester-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
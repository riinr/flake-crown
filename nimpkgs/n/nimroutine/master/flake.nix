{
  description = ''A go routine like nim implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimroutine-master.flake = false;
  inputs.src-nimroutine-master.owner = "rogercloud";
  inputs.src-nimroutine-master.ref   = "master";
  inputs.src-nimroutine-master.repo  = "nim-routine";
  inputs.src-nimroutine-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimroutine-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimroutine-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
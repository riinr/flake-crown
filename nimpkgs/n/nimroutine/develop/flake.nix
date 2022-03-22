{
  description = ''A go routine like nim implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimroutine-develop.flake = false;
  inputs.src-nimroutine-develop.ref   = "refs/heads/develop";
  inputs.src-nimroutine-develop.owner = "rogercloud";
  inputs.src-nimroutine-develop.repo  = "nim-routine";
  inputs.src-nimroutine-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimroutine-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimroutine-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
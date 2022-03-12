{
  description = ''Wrapper of the libtcod library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libtcod_nim-master.flake = false;
  inputs.src-libtcod_nim-master.owner = "Vladar4";
  inputs.src-libtcod_nim-master.ref   = "refs/heads/master";
  inputs.src-libtcod_nim-master.repo  = "libtcod_nim";
  inputs.src-libtcod_nim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libtcod_nim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
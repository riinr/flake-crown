{
  description = ''Wrapper of the libtcod library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libtcod_nim-v1_112_0.flake = false;
  inputs.src-libtcod_nim-v1_112_0.ref   = "refs/tags/v1.112.0";
  inputs.src-libtcod_nim-v1_112_0.owner = "Vladar4";
  inputs.src-libtcod_nim-v1_112_0.repo  = "libtcod_nim";
  inputs.src-libtcod_nim-v1_112_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v1_112_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libtcod_nim-v1_112_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
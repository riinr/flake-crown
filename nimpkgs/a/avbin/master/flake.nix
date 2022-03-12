{
  description = ''Wrapper of the AVbin library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-avbin-master.flake = false;
  inputs.src-avbin-master.owner = "Vladar4";
  inputs.src-avbin-master.ref   = "refs/heads/master";
  inputs.src-avbin-master.repo  = "avbin";
  inputs.src-avbin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-avbin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-avbin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Simple 'with' macro for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-with-master.flake = false;
  inputs.src-with-master.owner = "zevv";
  inputs.src-with-master.ref   = "refs/heads/master";
  inputs.src-with-master.repo  = "with";
  inputs.src-with-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-with-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-with-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
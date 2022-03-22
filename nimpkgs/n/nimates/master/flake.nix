{
  description = ''a client library for the Postmates API written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimates-master.flake = false;
  inputs.src-nimates-master.owner = "jamesalbert";
  inputs.src-nimates-master.ref   = "master";
  inputs.src-nimates-master.repo  = "nimates";
  inputs.src-nimates-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimates-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimates-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
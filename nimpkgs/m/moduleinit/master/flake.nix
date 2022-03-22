{
  description = ''Nim module/thread initialisation ordering library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moduleinit-master.flake = false;
  inputs.src-moduleinit-master.owner = "skunkiferous";
  inputs.src-moduleinit-master.ref   = "master";
  inputs.src-moduleinit-master.repo  = "moduleinit";
  inputs.src-moduleinit-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moduleinit-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moduleinit-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
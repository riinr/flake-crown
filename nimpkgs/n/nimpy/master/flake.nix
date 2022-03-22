{
  description = ''Nim python integration lib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpy-master.flake = false;
  inputs.src-nimpy-master.owner = "yglukhov";
  inputs.src-nimpy-master.ref   = "master";
  inputs.src-nimpy-master.repo  = "nimpy";
  inputs.src-nimpy-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimpy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
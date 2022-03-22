{
  description = ''Nim implementation of Hashids'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hashids-master.flake = false;
  inputs.src-hashids-master.owner = "achesak";
  inputs.src-hashids-master.ref   = "master";
  inputs.src-hashids-master.repo  = "nim-hashids";
  inputs.src-hashids-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hashids-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hashids-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
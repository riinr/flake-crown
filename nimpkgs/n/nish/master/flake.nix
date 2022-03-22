{
  description = ''A Toy Shell Application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nish-master.flake = false;
  inputs.src-nish-master.owner = "owlinux1000";
  inputs.src-nish-master.ref   = "master";
  inputs.src-nish-master.repo  = "nish";
  inputs.src-nish-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nish-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nish-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
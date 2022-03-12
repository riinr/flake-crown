{
  description = ''dbg template; in debug echo'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dbg-master.flake = false;
  inputs.src-dbg-master.owner = "enthus1ast";
  inputs.src-dbg-master.ref   = "refs/heads/master";
  inputs.src-dbg-master.repo  = "nimDbg";
  inputs.src-dbg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dbg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dbg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
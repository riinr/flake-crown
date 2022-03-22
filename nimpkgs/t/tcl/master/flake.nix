{
  description = ''Wrapper for the TCL programming language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tcl-master.flake = false;
  inputs.src-tcl-master.ref   = "refs/heads/master";
  inputs.src-tcl-master.owner = "nim-lang";
  inputs.src-tcl-master.repo  = "tcl";
  inputs.src-tcl-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tcl-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tcl-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Generate a shared library and bindings for many languages.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genny-master.flake = false;
  inputs.src-genny-master.owner = "treeform";
  inputs.src-genny-master.ref   = "refs/heads/master";
  inputs.src-genny-master.repo  = "genny";
  inputs.src-genny-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genny-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-genny-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
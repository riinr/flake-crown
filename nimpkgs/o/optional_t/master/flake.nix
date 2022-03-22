{
  description = ''A simple Option[T] library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-optional_t-master.flake = false;
  inputs.src-optional_t-master.ref   = "refs/heads/master";
  inputs.src-optional_t-master.owner = "flaviut";
  inputs.src-optional_t-master.repo  = "optional_t";
  inputs.src-optional_t-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-optional_t-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-optional_t-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
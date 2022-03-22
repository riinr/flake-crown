{
  description = ''Compile-Time ORM for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gatabase-master.flake = false;
  inputs.src-gatabase-master.ref   = "refs/heads/master";
  inputs.src-gatabase-master.owner = "juancarlospaco";
  inputs.src-gatabase-master.repo  = "nim-gatabase";
  inputs.src-gatabase-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gatabase-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gatabase-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''utilities for transforming sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mutableseqs-master.flake = false;
  inputs.src-mutableseqs-master.ref   = "refs/heads/master";
  inputs.src-mutableseqs-master.owner = "iourinski";
  inputs.src-mutableseqs-master.repo  = "mutableseqs";
  inputs.src-mutableseqs-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mutableseqs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mutableseqs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
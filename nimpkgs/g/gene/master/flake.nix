{
  description = ''Gene - a general purpose language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gene-master.flake = false;
  inputs.src-gene-master.owner = "gcao";
  inputs.src-gene-master.ref   = "master";
  inputs.src-gene-master.repo  = "gene-new";
  inputs.src-gene-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gene-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gene-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
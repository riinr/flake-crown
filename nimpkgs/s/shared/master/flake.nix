{
  description = ''Nim library for shared types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shared-master.flake = false;
  inputs.src-shared-master.owner = "genotrance";
  inputs.src-shared-master.ref   = "refs/heads/master";
  inputs.src-shared-master.repo  = "shared";
  inputs.src-shared-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shared-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shared-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
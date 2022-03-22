{
  description = ''Tiny library to check if a system package is already installed.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-checkpack-master.flake = false;
  inputs.src-checkpack-master.ref   = "refs/heads/master";
  inputs.src-checkpack-master.owner = "EchoPouet";
  inputs.src-checkpack-master.repo  = "checkpack";
  inputs.src-checkpack-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-checkpack-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-checkpack-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
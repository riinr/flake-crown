{
  description = ''Macro-based pattern matching library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gara-master.flake = false;
  inputs.src-gara-master.ref   = "refs/heads/master";
  inputs.src-gara-master.owner = "alehander42";
  inputs.src-gara-master.repo  = "gara";
  inputs.src-gara-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gara-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gara-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
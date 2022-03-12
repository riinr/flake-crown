{
  description = ''Additional control structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-controlStructures-master.flake = false;
  inputs.src-controlStructures-master.owner = "TakeYourFreedom";
  inputs.src-controlStructures-master.ref   = "refs/heads/master";
  inputs.src-controlStructures-master.repo  = "Additional-Control-Structures-for-Nim";
  inputs.src-controlStructures-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-controlStructures-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-controlStructures-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
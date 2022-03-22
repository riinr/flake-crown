{
  description = ''A package manager that delegates to package authors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimp-master.flake = false;
  inputs.src-nimp-master.owner = "c-blake";
  inputs.src-nimp-master.ref   = "master";
  inputs.src-nimp-master.repo  = "nimp";
  inputs.src-nimp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
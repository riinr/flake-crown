{
  description = ''Print Debug for Nim, tiny 3 lines Lib, C Target'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-printdebug-master.flake = false;
  inputs.src-printdebug-master.owner = "juancarlospaco";
  inputs.src-printdebug-master.ref   = "refs/heads/master";
  inputs.src-printdebug-master.repo  = "nim-printdebug";
  inputs.src-printdebug-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-printdebug-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-printdebug-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
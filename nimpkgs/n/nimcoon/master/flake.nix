{
  description = ''A command-line YouTube player and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcoon-master.flake = false;
  inputs.src-nimcoon-master.owner = "gitweb";
  inputs.src-nimcoon-master.ref   = "refs/heads/master";
  inputs.src-nimcoon-master.repo  = "nimcoon";
  inputs.src-nimcoon-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcoon-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcoon-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
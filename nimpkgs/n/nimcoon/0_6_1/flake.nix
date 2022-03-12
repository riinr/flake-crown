{
  description = ''A command-line YouTube player and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcoon-0_6_1.flake = false;
  inputs.src-nimcoon-0_6_1.owner = "gitweb";
  inputs.src-nimcoon-0_6_1.ref   = "refs/tags/0.6.1";
  inputs.src-nimcoon-0_6_1.repo  = "nimcoon";
  inputs.src-nimcoon-0_6_1.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcoon-0_6_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcoon-0_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
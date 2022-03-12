{
  description = ''A command-line YouTube player and more'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimcoon-0_8_2.flake = false;
  inputs.src-nimcoon-0_8_2.owner = "gitweb";
  inputs.src-nimcoon-0_8_2.ref   = "refs/tags/0.8.2";
  inputs.src-nimcoon-0_8_2.repo  = "nimcoon";
  inputs.src-nimcoon-0_8_2.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimcoon-0_8_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimcoon-0_8_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
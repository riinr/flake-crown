{
  description = ''Localization package for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-loco-develop.flake = false;
  inputs.src-loco-develop.owner = "moigagoo";
  inputs.src-loco-develop.ref   = "refs/heads/develop";
  inputs.src-loco-develop.repo  = "loco";
  inputs.src-loco-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-loco-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-loco-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
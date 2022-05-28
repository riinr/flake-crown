{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oolib-0_4_1.flake = false;
  inputs.src-oolib-0_4_1.ref   = "refs/tags/0.4.1";
  inputs.src-oolib-0_4_1.owner = "Glasses-Neo";
  inputs.src-oolib-0_4_1.repo  = "OOlib";
  inputs.src-oolib-0_4_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oolib-0_4_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-oolib-0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
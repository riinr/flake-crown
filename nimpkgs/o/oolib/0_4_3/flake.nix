{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oolib-0_4_3.flake = false;
  inputs.src-oolib-0_4_3.ref   = "refs/tags/0.4.3";
  inputs.src-oolib-0_4_3.owner = "Glasses-Neo";
  inputs.src-oolib-0_4_3.repo  = "OOlib";
  inputs.src-oolib-0_4_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oolib-0_4_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-oolib-0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
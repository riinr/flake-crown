{
  description = ''A Nim wrapper for TheBlueAlliance'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-the_nim_alliance-v0_1_0.flake = false;
  inputs.src-the_nim_alliance-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-the_nim_alliance-v0_1_0.owner = "tervay";
  inputs.src-the_nim_alliance-v0_1_0.repo  = "the-nim-alliance";
  inputs.src-the_nim_alliance-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-the_nim_alliance-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-the_nim_alliance-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
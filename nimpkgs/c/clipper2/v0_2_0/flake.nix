{
  description = ''Bindings for Clipper2Lib: Polygon Clipping and Offsetting Library from Angus Johnson'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-clipper2-v0_2_0.flake = false;
  inputs.src-clipper2-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-clipper2-v0_2_0.owner = "scemino";
  inputs.src-clipper2-v0_2_0.repo  = "clipper2";
  inputs.src-clipper2-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-clipper2-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-clipper2-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''C Tox core wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-toxcore-nim-toxcore-0_5_0.flake = false;
  inputs.src-toxcore-nim-toxcore-0_5_0.ref   = "nim-toxcore-0.5.0";
  inputs.src-toxcore-nim-toxcore-0_5_0.owner = "~ehmry";
  inputs.src-toxcore-nim-toxcore-0_5_0.repo  = "nim-toxcore";
  inputs.src-toxcore-nim-toxcore-0_5_0.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-toxcore-nim-toxcore-0_5_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-toxcore-nim-toxcore-0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
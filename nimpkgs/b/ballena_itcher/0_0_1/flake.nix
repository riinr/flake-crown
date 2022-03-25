{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ballena_itcher-0_0_1.flake = false;
  inputs.src-ballena_itcher-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-ballena_itcher-0_0_1.owner = "juancarlospaco";
  inputs.src-ballena_itcher-0_0_1.repo  = "ballena-itcher";
  inputs.src-ballena_itcher-0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ballena_itcher-0_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ballena_itcher-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
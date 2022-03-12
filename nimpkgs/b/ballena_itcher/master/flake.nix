{
  description = ''Flash ISO images to SD cards & USB drives, safely and easily.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ballena_itcher-master.flake = false;
  inputs.src-ballena_itcher-master.owner = "juancarlospaco";
  inputs.src-ballena_itcher-master.ref   = "refs/heads/master";
  inputs.src-ballena_itcher-master.repo  = "ballena-itcher";
  inputs.src-ballena_itcher-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ballena_itcher-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ballena_itcher-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
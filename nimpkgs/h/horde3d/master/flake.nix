{
  description = ''Wrapper for Horde3D, a small open source 3D rendering engine.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-horde3d-master.flake = false;
  inputs.src-horde3d-master.owner = "fowlmouth";
  inputs.src-horde3d-master.ref   = "refs/heads/master";
  inputs.src-horde3d-master.repo  = "horde3d";
  inputs.src-horde3d-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-horde3d-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-horde3d-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
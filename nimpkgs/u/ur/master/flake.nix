{
  description = ''Universal Result objects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ur-master.flake = false;
  inputs.src-ur-master.ref   = "refs/heads/master";
  inputs.src-ur-master.owner = "JohnAD";
  inputs.src-ur-master.repo  = "ur";
  inputs.src-ur-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ur-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ur-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
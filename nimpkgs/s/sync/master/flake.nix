{
  description = ''Useful synchronization primitives'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sync-master.flake = false;
  inputs.src-sync-master.owner = "planetis-m";
  inputs.src-sync-master.ref   = "refs/heads/master";
  inputs.src-sync-master.repo  = "sync";
  inputs.src-sync-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sync-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sync-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
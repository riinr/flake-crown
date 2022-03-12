{
  description = ''Command to remove acceptably empty directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-awesome_rmdir-master.flake = false;
  inputs.src-awesome_rmdir-master.owner = "Araq";
  inputs.src-awesome_rmdir-master.ref   = "refs/heads/master";
  inputs.src-awesome_rmdir-master.repo  = "awesome_rmdir";
  inputs.src-awesome_rmdir-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-awesome_rmdir-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-awesome_rmdir-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
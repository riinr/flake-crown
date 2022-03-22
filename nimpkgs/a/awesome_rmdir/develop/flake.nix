{
  description = ''Command to remove acceptably empty directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-awesome_rmdir-develop.flake = false;
  inputs.src-awesome_rmdir-develop.ref   = "refs/heads/develop";
  inputs.src-awesome_rmdir-develop.owner = "Araq";
  inputs.src-awesome_rmdir-develop.repo  = "awesome_rmdir";
  inputs.src-awesome_rmdir-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-awesome_rmdir-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-awesome_rmdir-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Efficient hash table that is a key-value mapping (removed from stdlib)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gentabs-master.flake = false;
  inputs.src-gentabs-master.owner = "lcrees";
  inputs.src-gentabs-master.ref   = "refs/heads/master";
  inputs.src-gentabs-master.repo  = "gentabs";
  inputs.src-gentabs-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gentabs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gentabs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Concurrent hash table'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stashtable-master.flake = false;
  inputs.src-stashtable-master.ref   = "refs/heads/master";
  inputs.src-stashtable-master.owner = "olliNiinivaara";
  inputs.src-stashtable-master.repo  = "StashTable";
  inputs.src-stashtable-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stashtable-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stashtable-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
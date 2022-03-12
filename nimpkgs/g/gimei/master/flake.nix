{
  description = ''random Japanese name and address generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gimei-master.flake = false;
  inputs.src-gimei-master.owner = "mkanenobu";
  inputs.src-gimei-master.ref   = "refs/heads/master";
  inputs.src-gimei-master.repo  = "nim-gimei";
  inputs.src-gimei-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gimei-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gimei-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
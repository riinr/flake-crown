{
  description = ''Nim implementation of minhash algoritim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-minhash-master.flake = false;
  inputs.src-minhash-master.ref   = "refs/heads/master";
  inputs.src-minhash-master.owner = "bung87";
  inputs.src-minhash-master.repo  = "minhash";
  inputs.src-minhash-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-minhash-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-minhash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
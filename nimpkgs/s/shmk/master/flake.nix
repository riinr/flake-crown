{
  description = ''Smart file/folder creation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shmk-master.flake = false;
  inputs.src-shmk-master.owner = "thisNimAgo";
  inputs.src-shmk-master.ref   = "refs/heads/master";
  inputs.src-shmk-master.repo  = "mk";
  inputs.src-shmk-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shmk-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shmk-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
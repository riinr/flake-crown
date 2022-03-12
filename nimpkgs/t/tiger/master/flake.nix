{
  description = ''Tiger hash function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tiger-master.flake = false;
  inputs.src-tiger-master.owner = "~ehmry";
  inputs.src-tiger-master.ref   = "refs/heads/master";
  inputs.src-tiger-master.repo  = "nim_tiger";
  inputs.src-tiger-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tiger-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tiger-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
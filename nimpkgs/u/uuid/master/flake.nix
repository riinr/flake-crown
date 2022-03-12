{
  description = ''UUID wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uuid-master.flake = false;
  inputs.src-uuid-master.owner = "idlewan";
  inputs.src-uuid-master.ref   = "refs/heads/master";
  inputs.src-uuid-master.repo  = "nim-uuid";
  inputs.src-uuid-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uuid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-uuid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
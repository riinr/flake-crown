{
  description = ''Variable length arrays for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vla-master.flake = false;
  inputs.src-vla-master.owner = "bpr";
  inputs.src-vla-master.ref   = "refs/heads/master";
  inputs.src-vla-master.repo  = "vla";
  inputs.src-vla-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vla-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vla-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
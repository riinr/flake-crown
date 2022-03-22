{
  description = ''Bytes utils for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bio-master.flake = false;
  inputs.src-bio-master.owner = "xzeshen";
  inputs.src-bio-master.ref   = "master";
  inputs.src-bio-master.repo  = "bio";
  inputs.src-bio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
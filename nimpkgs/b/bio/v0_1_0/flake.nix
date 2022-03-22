{
  description = ''Bytes utils for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bio-v0_1_0.flake = false;
  inputs.src-bio-v0_1_0.owner = "xzeshen";
  inputs.src-bio-v0_1_0.ref   = "v0_1_0";
  inputs.src-bio-v0_1_0.repo  = "bio";
  inputs.src-bio-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bio-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bio-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
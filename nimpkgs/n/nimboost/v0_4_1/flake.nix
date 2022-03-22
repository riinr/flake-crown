{
  description = ''Additions to the Nim's standard library, like boost for C++'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimboost-v0_4_1.flake = false;
  inputs.src-nimboost-v0_4_1.owner = "vegansk";
  inputs.src-nimboost-v0_4_1.ref   = "v0_4_1";
  inputs.src-nimboost-v0_4_1.repo  = "nimboost";
  inputs.src-nimboost-v0_4_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimboost-v0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimboost-v0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
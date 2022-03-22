{
  description = ''JSON deserialization macro for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eminim-v2_5_1.flake = false;
  inputs.src-eminim-v2_5_1.ref   = "refs/tags/v2.5.1";
  inputs.src-eminim-v2_5_1.owner = "planetis-m";
  inputs.src-eminim-v2_5_1.repo  = "eminim";
  inputs.src-eminim-v2_5_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v2_5_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eminim-v2_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
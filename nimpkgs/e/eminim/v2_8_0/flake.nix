{
  description = ''JSON serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eminim-v2_8_0.flake = false;
  inputs.src-eminim-v2_8_0.owner = "planetis-m";
  inputs.src-eminim-v2_8_0.ref   = "refs/tags/v2.8.0";
  inputs.src-eminim-v2_8_0.repo  = "eminim";
  inputs.src-eminim-v2_8_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v2_8_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eminim-v2_8_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
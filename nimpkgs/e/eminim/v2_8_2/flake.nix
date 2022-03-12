{
  description = ''JSON serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eminim-v2_8_2.flake = false;
  inputs.src-eminim-v2_8_2.owner = "planetis-m";
  inputs.src-eminim-v2_8_2.ref   = "refs/tags/v2.8.2";
  inputs.src-eminim-v2_8_2.repo  = "eminim";
  inputs.src-eminim-v2_8_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eminim-v2_8_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eminim-v2_8_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
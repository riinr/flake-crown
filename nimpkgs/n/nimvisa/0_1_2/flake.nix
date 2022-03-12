{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimvisa-0_1_2.flake = false;
  inputs.src-nimvisa-0_1_2.owner = "leeooox";
  inputs.src-nimvisa-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-nimvisa-0_1_2.repo  = "nimvisa";
  inputs.src-nimvisa-0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimvisa-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimvisa-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Binary serialization framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bingo-v0_3_0.flake = false;
  inputs.src-bingo-v0_3_0.owner = "planetis-m";
  inputs.src-bingo-v0_3_0.ref   = "v0_3_0";
  inputs.src-bingo-v0_3_0.repo  = "bingo";
  inputs.src-bingo-v0_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bingo-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bingo-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
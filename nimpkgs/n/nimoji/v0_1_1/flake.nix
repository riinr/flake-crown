{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimoji-v0_1_1.flake = false;
  inputs.src-nimoji-v0_1_1.owner = "pietroppeter";
  inputs.src-nimoji-v0_1_1.ref   = "v0_1_1";
  inputs.src-nimoji-v0_1_1.repo  = "nimoji";
  inputs.src-nimoji-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimoji-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimoji-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
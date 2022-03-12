{
  description = ''Simple ECS implementation for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tecs-v0_1.flake = false;
  inputs.src-tecs-v0_1.owner = "Timofffee";
  inputs.src-tecs-v0_1.ref   = "refs/tags/v0.1";
  inputs.src-tecs-v0_1.repo  = "tecs.nim";
  inputs.src-tecs-v0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tecs-v0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tecs-v0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
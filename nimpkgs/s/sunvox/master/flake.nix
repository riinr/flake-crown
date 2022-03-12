{
  description = ''Bindings for SunVox modular synthesizer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sunvox-master.flake = false;
  inputs.src-sunvox-master.owner = "exelotl";
  inputs.src-sunvox-master.ref   = "refs/heads/master";
  inputs.src-sunvox-master.repo  = "nim-sunvox";
  inputs.src-sunvox-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sunvox-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sunvox-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
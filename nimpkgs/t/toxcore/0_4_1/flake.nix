{
  description = ''C Tox core wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-toxcore-0_4_1.flake = false;
  inputs.src-toxcore-0_4_1.owner = "~ehmry";
  inputs.src-toxcore-0_4_1.ref   = "refs/tags/0.4.1";
  inputs.src-toxcore-0_4_1.repo  = "nim_tox";
  inputs.src-toxcore-0_4_1.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-toxcore-0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-toxcore-0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
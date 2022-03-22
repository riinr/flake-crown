{
  description = ''subhook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-subhook-0_5_3.flake = false;
  inputs.src-subhook-0_5_3.ref   = "refs/tags/0.5.3";
  inputs.src-subhook-0_5_3.owner = "ba0f3";
  inputs.src-subhook-0_5_3.repo  = "subhook.nim";
  inputs.src-subhook-0_5_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-subhook-0_5_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-subhook-0_5_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''IPC interface to sway (or i3) compositors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-swayipc-2_0_3.flake = false;
  inputs.src-swayipc-2_0_3.owner = "disruptek";
  inputs.src-swayipc-2_0_3.ref   = "refs/tags/2.0.3";
  inputs.src-swayipc-2_0_3.repo  = "swayipc";
  inputs.src-swayipc-2_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-2_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-swayipc-2_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
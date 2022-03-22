{
  description = ''A wrapper of the ORX 2.5D game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norx-master.flake = false;
  inputs.src-norx-master.owner = "gokr";
  inputs.src-norx-master.ref   = "master";
  inputs.src-norx-master.repo  = "norx";
  inputs.src-norx-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norx-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
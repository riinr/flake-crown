{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-switch_build-master.flake = false;
  inputs.src-switch_build-master.owner = "jyapayne";
  inputs.src-switch_build-master.ref   = "refs/heads/master";
  inputs.src-switch_build-master.repo  = "switch-build";
  inputs.src-switch_build-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-switch_build-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-switch_build-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
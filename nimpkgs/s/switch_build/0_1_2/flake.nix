{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-switch_build-0_1_2.flake = false;
  inputs.src-switch_build-0_1_2.owner = "jyapayne";
  inputs.src-switch_build-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-switch_build-0_1_2.repo  = "switch-build";
  inputs.src-switch_build-0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-switch_build-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-switch_build-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
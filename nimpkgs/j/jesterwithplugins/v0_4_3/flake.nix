{
  description = ''A sinatra-like web framework for Nim with plugins.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jesterwithplugins-v0_4_3.flake = false;
  inputs.src-jesterwithplugins-v0_4_3.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_3.ref   = "refs/tags/v0.4.3";
  inputs.src-jesterwithplugins-v0_4_3.repo  = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jesterwithplugins-v0_4_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jesterwithplugins-v0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
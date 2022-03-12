{
  description = ''A sinatra-like web framework for Nim with plugins.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jesterwithplugins-v0_4_0.flake = false;
  inputs.src-jesterwithplugins-v0_4_0.owner = "JohnAD";
  inputs.src-jesterwithplugins-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-jesterwithplugins-v0_4_0.repo  = "jesterwithplugins";
  inputs.src-jesterwithplugins-v0_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jesterwithplugins-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jesterwithplugins-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
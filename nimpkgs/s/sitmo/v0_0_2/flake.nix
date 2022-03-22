{
  description = ''Sitmo parallel random number generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sitmo-v0_0_2.flake = false;
  inputs.src-sitmo-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-sitmo-v0_0_2.owner = "jxy";
  inputs.src-sitmo-v0_0_2.repo  = "sitmo";
  inputs.src-sitmo-v0_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sitmo-v0_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sitmo-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''truthy, elvis, ternary, conditional assignment, conditional access and coalesce and default coalesce operators for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-elvis-v0_5_0.flake = false;
  inputs.src-elvis-v0_5_0.ref   = "refs/tags/v0.5.0";
  inputs.src-elvis-v0_5_0.owner = "mattaylor";
  inputs.src-elvis-v0_5_0.repo  = "elvis";
  inputs.src-elvis-v0_5_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-elvis-v0_5_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-elvis-v0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
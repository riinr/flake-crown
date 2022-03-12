{
  description = ''A nil coalescing operator ?? for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-coalesce-v0_3_2.flake = false;
  inputs.src-coalesce-v0_3_2.owner = "piedar";
  inputs.src-coalesce-v0_3_2.ref   = "refs/tags/v0.3.2";
  inputs.src-coalesce-v0_3_2.repo  = "coalesce";
  inputs.src-coalesce-v0_3_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-coalesce-v0_3_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-coalesce-v0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
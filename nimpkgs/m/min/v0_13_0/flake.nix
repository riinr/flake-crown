{
  description = ''A small but practical concatenative programming language and shell.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-min-v0_13_0.flake = false;
  inputs.src-min-v0_13_0.owner = "h3rald";
  inputs.src-min-v0_13_0.ref   = "refs/tags/v0.13.0";
  inputs.src-min-v0_13_0.repo  = "min";
  inputs.src-min-v0_13_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-min-v0_13_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-min-v0_13_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Command line option parser that will make you smile'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-docopt-v0_6_0.flake = false;
  inputs.src-docopt-v0_6_0.owner = "docopt";
  inputs.src-docopt-v0_6_0.ref   = "v0_6_0";
  inputs.src-docopt-v0_6_0.repo  = "docopt.nim";
  inputs.src-docopt-v0_6_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-docopt-v0_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-docopt-v0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
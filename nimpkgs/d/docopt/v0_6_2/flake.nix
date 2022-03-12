{
  description = ''Command-line args parser based on Usage message'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-docopt-v0_6_2.flake = false;
  inputs.src-docopt-v0_6_2.owner = "docopt";
  inputs.src-docopt-v0_6_2.ref   = "refs/tags/v0.6.2";
  inputs.src-docopt-v0_6_2.repo  = "docopt.nim";
  inputs.src-docopt-v0_6_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-docopt-v0_6_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-docopt-v0_6_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
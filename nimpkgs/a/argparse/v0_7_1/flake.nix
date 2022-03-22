{
  description = ''A command line argument parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argparse-v0_7_1.flake = false;
  inputs.src-argparse-v0_7_1.owner = "iffy";
  inputs.src-argparse-v0_7_1.ref   = "v0_7_1";
  inputs.src-argparse-v0_7_1.repo  = "nim-argparse";
  inputs.src-argparse-v0_7_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argparse-v0_7_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-argparse-v0_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
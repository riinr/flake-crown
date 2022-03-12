{
  description = ''WIP strongly-typed argument parser with sub command support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argparse-master.flake = false;
  inputs.src-argparse-master.owner = "iffy";
  inputs.src-argparse-master.ref   = "refs/heads/master";
  inputs.src-argparse-master.repo  = "nim-argparse";
  inputs.src-argparse-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argparse-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-argparse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
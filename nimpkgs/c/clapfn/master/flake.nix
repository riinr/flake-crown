{
  description = ''A fast and simple command line argument parser inspired by Python's argparse.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-clapfn-master.flake = false;
  inputs.src-clapfn-master.owner = "oliversandli";
  inputs.src-clapfn-master.ref   = "refs/heads/master";
  inputs.src-clapfn-master.repo  = "clapfn";
  inputs.src-clapfn-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-clapfn-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-clapfn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
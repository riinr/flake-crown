{
  description = ''Bit Shuffling Block Compressor (C-Blosc)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-blosc-master.flake = false;
  inputs.src-blosc-master.owner = "Vindaar";
  inputs.src-blosc-master.ref   = "refs/heads/master";
  inputs.src-blosc-master.repo  = "nblosc";
  inputs.src-blosc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-blosc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-blosc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
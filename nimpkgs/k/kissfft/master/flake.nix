{
  description = ''Nim binding for KissFFT Fast Fourier Transform library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kissfft-master.flake = false;
  inputs.src-kissfft-master.owner = "m13253";
  inputs.src-kissfft-master.ref   = "master";
  inputs.src-kissfft-master.repo  = "nim-kissfft";
  inputs.src-kissfft-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kissfft-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kissfft-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
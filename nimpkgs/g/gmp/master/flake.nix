{
  description = ''Wrapper for the GNU Multiple Precision Arithmetic Library (GMP)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gmp-master.flake = false;
  inputs.src-gmp-master.ref   = "refs/heads/master";
  inputs.src-gmp-master.owner = "subsetpark";
  inputs.src-gmp-master.repo  = "nim-gmp";
  inputs.src-gmp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gmp-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gmp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
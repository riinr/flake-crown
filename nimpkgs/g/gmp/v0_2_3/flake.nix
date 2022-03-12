{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gmp-v0_2_3.flake = false;
  inputs.src-gmp-v0_2_3.owner = "subsetpark";
  inputs.src-gmp-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-gmp-v0_2_3.repo  = "nim-gmp";
  inputs.src-gmp-v0_2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gmp-v0_2_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gmp-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
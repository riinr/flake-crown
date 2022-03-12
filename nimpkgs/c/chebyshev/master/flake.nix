{
  description = ''Chebyshev approximation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chebyshev-master.flake = false;
  inputs.src-chebyshev-master.owner = "jxy";
  inputs.src-chebyshev-master.ref   = "refs/heads/master";
  inputs.src-chebyshev-master.repo  = "chebyshev";
  inputs.src-chebyshev-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chebyshev-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chebyshev-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
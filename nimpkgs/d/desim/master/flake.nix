{
  description = ''A lightweight discrete event simulator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-desim-master.flake = false;
  inputs.src-desim-master.owner = "jayvanderwall";
  inputs.src-desim-master.ref   = "refs/heads/master";
  inputs.src-desim-master.repo  = "desim";
  inputs.src-desim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-desim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-desim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}

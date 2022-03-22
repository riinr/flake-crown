{
  description = ''Integrator framework for Molecular Dynamic evolutions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mdevolve-master.flake = false;
  inputs.src-mdevolve-master.owner = "jxy";
  inputs.src-mdevolve-master.ref   = "master";
  inputs.src-mdevolve-master.repo  = "MDevolve";
  inputs.src-mdevolve-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mdevolve-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mdevolve-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
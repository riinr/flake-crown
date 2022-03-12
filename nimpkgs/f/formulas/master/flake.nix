{
  description = ''Mathematical formulas'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-formulas-master.flake = false;
  inputs.src-formulas-master.owner = "thisago";
  inputs.src-formulas-master.ref   = "refs/heads/master";
  inputs.src-formulas-master.repo  = "formulas.nim";
  inputs.src-formulas-master.type  = "other";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-formulas-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-formulas-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
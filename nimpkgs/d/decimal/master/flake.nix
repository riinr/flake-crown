{
  description = ''A correctly-rounded arbitrary precision decimal floating point arithmetic library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-decimal-master.flake = false;
  inputs.src-decimal-master.ref   = "refs/heads/master";
  inputs.src-decimal-master.owner = "inv2004";
  inputs.src-decimal-master.repo  = "nim-decimal";
  inputs.src-decimal-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-decimal-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-decimal-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
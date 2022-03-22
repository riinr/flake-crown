{
  description = ''A validator for greek social security number (AMKA)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-amka-master.flake = false;
  inputs.src-amka-master.owner = "zoispag";
  inputs.src-amka-master.ref   = "master";
  inputs.src-amka-master.repo  = "amka-nim";
  inputs.src-amka-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-amka-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-amka-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
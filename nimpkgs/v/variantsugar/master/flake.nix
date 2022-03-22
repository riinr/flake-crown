{
  description = ''utility macros mostly for object variants'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-variantsugar-master.flake = false;
  inputs.src-variantsugar-master.ref   = "refs/heads/master";
  inputs.src-variantsugar-master.owner = "metagn";
  inputs.src-variantsugar-master.repo  = "variantsugar";
  inputs.src-variantsugar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-variantsugar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-variantsugar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
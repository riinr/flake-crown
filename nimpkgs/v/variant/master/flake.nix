{
  description = ''Variant type and type matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-variant-master.flake = false;
  inputs.src-variant-master.owner = "yglukhov";
  inputs.src-variant-master.ref   = "refs/heads/master";
  inputs.src-variant-master.repo  = "variant";
  inputs.src-variant-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-variant-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-variant-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
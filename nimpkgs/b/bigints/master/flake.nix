{
  description = ''Arbitrary-precision integers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bigints-master.flake = false;
  inputs.src-bigints-master.owner = "nim-lang";
  inputs.src-bigints-master.ref   = "refs/heads/master";
  inputs.src-bigints-master.repo  = "bigints";
  inputs.src-bigints-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bigints-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bigints-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
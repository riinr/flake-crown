{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-decimal128-master.flake = false;
  inputs.src-decimal128-master.owner = "JohnAD";
  inputs.src-decimal128-master.ref   = "refs/heads/master";
  inputs.src-decimal128-master.repo  = "decimal128";
  inputs.src-decimal128-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-decimal128-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-decimal128-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
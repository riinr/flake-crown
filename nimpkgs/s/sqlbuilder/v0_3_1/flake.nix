{
  description = ''A SQLbuilder with support for NULL values'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sqlbuilder-v0_3_1.flake = false;
  inputs.src-sqlbuilder-v0_3_1.owner = "ThomasTJdev";
  inputs.src-sqlbuilder-v0_3_1.ref   = "refs/tags/v0.3.1";
  inputs.src-sqlbuilder-v0_3_1.repo  = "nim_sqlbuilder";
  inputs.src-sqlbuilder-v0_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sqlbuilder-v0_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sqlbuilder-v0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
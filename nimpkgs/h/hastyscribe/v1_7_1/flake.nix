{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hastyscribe-v1_7_1.flake = false;
  inputs.src-hastyscribe-v1_7_1.ref   = "refs/tags/v1.7.1";
  inputs.src-hastyscribe-v1_7_1.owner = "h3rald";
  inputs.src-hastyscribe-v1_7_1.repo  = "hastyscribe";
  inputs.src-hastyscribe-v1_7_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_7_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hastyscribe-v1_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
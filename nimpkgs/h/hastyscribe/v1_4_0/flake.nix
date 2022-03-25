{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hastyscribe-v1_4_0.flake = false;
  inputs.src-hastyscribe-v1_4_0.ref   = "refs/tags/v1.4.0";
  inputs.src-hastyscribe-v1_4_0.owner = "h3rald";
  inputs.src-hastyscribe-v1_4_0.repo  = "hastyscribe";
  inputs.src-hastyscribe-v1_4_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hastyscribe-v1_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
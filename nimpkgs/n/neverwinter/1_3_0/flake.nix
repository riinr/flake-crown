{
  description = ''Neverwinter Nights 1: Enhanced Edition data accessor library and utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neverwinter-1_3_0.flake = false;
  inputs.src-neverwinter-1_3_0.ref   = "refs/tags/1.3.0";
  inputs.src-neverwinter-1_3_0.owner = "niv";
  inputs.src-neverwinter-1_3_0.repo  = "neverwinter.nim";
  inputs.src-neverwinter-1_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-neverwinter-1_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
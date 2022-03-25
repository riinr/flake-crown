{
  description = ''Neverwinter Nights 1: Enhanced Edition data accessor library and utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neverwinter-1_2_10.flake = false;
  inputs.src-neverwinter-1_2_10.ref   = "refs/tags/1.2.10";
  inputs.src-neverwinter-1_2_10.owner = "niv";
  inputs.src-neverwinter-1_2_10.repo  = "neverwinter.nim";
  inputs.src-neverwinter-1_2_10.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter-1_2_10"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-neverwinter-1_2_10";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
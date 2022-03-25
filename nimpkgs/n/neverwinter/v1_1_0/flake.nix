{
  description = ''nwn1 development tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neverwinter_utils-v1_1_0.flake = false;
  inputs.src-neverwinter_utils-v1_1_0.ref   = "refs/tags/v1.1.0";
  inputs.src-neverwinter_utils-v1_1_0.owner = "niv";
  inputs.src-neverwinter_utils-v1_1_0.repo  = "neverwinter.nim";
  inputs.src-neverwinter_utils-v1_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neverwinter_utils-v1_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-neverwinter_utils-v1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
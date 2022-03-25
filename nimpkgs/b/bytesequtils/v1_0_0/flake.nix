{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-byteutils-v1_0_0.flake = false;
  inputs.src-byteutils-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-byteutils-v1_0_0.owner = "Clonkk";
  inputs.src-byteutils-v1_0_0.repo  = "bytesequtils";
  inputs.src-byteutils-v1_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-byteutils-v1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-byteutils-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
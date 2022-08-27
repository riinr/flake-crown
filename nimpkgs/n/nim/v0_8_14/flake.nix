{
  description = ''Package providing the Nim compiler binaries plus all its source files that can be used as a library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim-v0_8_14.flake = false;
  inputs.src-nim-v0_8_14.ref   = "refs/tags/v0.8.14";
  inputs.src-nim-v0_8_14.owner = "nim-lang";
  inputs.src-nim-v0_8_14.repo  = "Nim";
  inputs.src-nim-v0_8_14.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim-v0_8_14"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nim-v0_8_14";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
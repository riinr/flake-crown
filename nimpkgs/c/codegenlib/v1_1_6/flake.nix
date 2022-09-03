{
  description = ''A simple code generation library for other programming languages!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-codegenlib-v1_1_6.flake = false;
  inputs.src-codegenlib-v1_1_6.ref   = "refs/tags/v1.1.6";
  inputs.src-codegenlib-v1_1_6.owner = "Mythical-Forest-Collective";
  inputs.src-codegenlib-v1_1_6.repo  = "CodeGenLib";
  inputs.src-codegenlib-v1_1_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-codegenlib-v1_1_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-codegenlib-v1_1_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-distorm3-3_5_2.flake = false;
  inputs.src-distorm3-3_5_2.ref   = "refs/tags/3.5.2";
  inputs.src-distorm3-3_5_2.owner = "ba0f3";
  inputs.src-distorm3-3_5_2.repo  = "distorm3.nim";
  inputs.src-distorm3-3_5_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-distorm3-3_5_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-distorm3-3_5_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
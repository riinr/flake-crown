{
  description = ''Kaitai Struct runtime library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kaitai_struct_nim_runtime-0_9.flake = false;
  inputs.src-kaitai_struct_nim_runtime-0_9.ref   = "refs/tags/0.9";
  inputs.src-kaitai_struct_nim_runtime-0_9.owner = "kaitai-io";
  inputs.src-kaitai_struct_nim_runtime-0_9.repo  = "kaitai_struct_nim_runtime";
  inputs.src-kaitai_struct_nim_runtime-0_9.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kaitai_struct_nim_runtime-0_9"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-kaitai_struct_nim_runtime-0_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
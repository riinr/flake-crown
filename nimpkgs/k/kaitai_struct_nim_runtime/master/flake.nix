{
  description = ''Kaitai Struct runtime library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kaitai_struct_nim_runtime-master.flake = false;
  inputs.src-kaitai_struct_nim_runtime-master.ref   = "refs/heads/master";
  inputs.src-kaitai_struct_nim_runtime-master.owner = "kaitai-io";
  inputs.src-kaitai_struct_nim_runtime-master.repo  = "kaitai_struct_nim_runtime";
  inputs.src-kaitai_struct_nim_runtime-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kaitai_struct_nim_runtime-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kaitai_struct_nim_runtime-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
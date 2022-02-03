{
  description = ''Kaitai Struct runtime library for Nim'';
  inputs.src-kaitai_struct_nim_runtime-master.flake = false;
  inputs.src-kaitai_struct_nim_runtime-master.type = "github";
  inputs.src-kaitai_struct_nim_runtime-master.owner = "kaitai-io";
  inputs.src-kaitai_struct_nim_runtime-master.repo = "kaitai_struct_nim_runtime";
  inputs.src-kaitai_struct_nim_runtime-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kaitai_struct_nim_runtime-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kaitai_struct_nim_runtime-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kaitai_struct_nim_runtime-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Kaitai Struct runtime library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kaitai_struct_nim_runtime-master".url = "path:./master";
  inputs."kaitai_struct_nim_runtime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kaitai_struct_nim_runtime-0_9".url = "path:./0_9";
  inputs."kaitai_struct_nim_runtime-0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
{
  description = ''Kaitai Struct runtime library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kaitai_struct_nim_runtime-master".dir   = "master";
  inputs."kaitai_struct_nim_runtime-master".owner = "nim-nix-pkgs";
  inputs."kaitai_struct_nim_runtime-master".ref   = "master";
  inputs."kaitai_struct_nim_runtime-master".repo  = "kaitai_struct_nim_runtime";
  inputs."kaitai_struct_nim_runtime-master".type  = "github";
  inputs."kaitai_struct_nim_runtime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kaitai_struct_nim_runtime-0_10".dir   = "0_10";
  inputs."kaitai_struct_nim_runtime-0_10".owner = "nim-nix-pkgs";
  inputs."kaitai_struct_nim_runtime-0_10".ref   = "master";
  inputs."kaitai_struct_nim_runtime-0_10".repo  = "kaitai_struct_nim_runtime";
  inputs."kaitai_struct_nim_runtime-0_10".type  = "github";
  inputs."kaitai_struct_nim_runtime-0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kaitai_struct_nim_runtime-0_9".dir   = "0_9";
  inputs."kaitai_struct_nim_runtime-0_9".owner = "nim-nix-pkgs";
  inputs."kaitai_struct_nim_runtime-0_9".ref   = "master";
  inputs."kaitai_struct_nim_runtime-0_9".repo  = "kaitai_struct_nim_runtime";
  inputs."kaitai_struct_nim_runtime-0_9".type  = "github";
  inputs."kaitai_struct_nim_runtime-0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
{
  description = ''wrapper for libclang (the C-interface of the clang LLVM frontend)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libclang-master".dir   = "master";
  inputs."libclang-master".owner = "nim-nix-pkgs";
  inputs."libclang-master".ref   = "master";
  inputs."libclang-master".repo  = "libclang";
  inputs."libclang-master".type  = "github";
  inputs."libclang-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libclang-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
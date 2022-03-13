{
  description = ''LLVM bindings for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."llvm-master".dir   = "master";
  inputs."llvm-master".owner = "nim-nix-pkgs";
  inputs."llvm-master".ref   = "master";
  inputs."llvm-master".repo  = "llvm";
  inputs."llvm-master".type  = "github";
  inputs."llvm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."llvm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
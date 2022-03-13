{
  description = ''Wrapper for libsvm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libsvm_legacy-master".dir   = "master";
  inputs."libsvm_legacy-master".owner = "nim-nix-pkgs";
  inputs."libsvm_legacy-master".ref   = "master";
  inputs."libsvm_legacy-master".repo  = "libsvm_legacy";
  inputs."libsvm_legacy-master".type  = "github";
  inputs."libsvm_legacy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsvm_legacy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
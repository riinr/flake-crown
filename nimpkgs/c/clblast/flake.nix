{
  description = ''Wrapper for CLBlast, an OpenCL BLAS library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clblast-master".dir   = "master";
  inputs."clblast-master".owner = "nim-nix-pkgs";
  inputs."clblast-master".ref   = "master";
  inputs."clblast-master".repo  = "clblast";
  inputs."clblast-master".type  = "github";
  inputs."clblast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clblast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
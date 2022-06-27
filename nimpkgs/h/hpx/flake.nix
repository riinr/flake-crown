{
  description = ''Nim wrapper for STE||AR HPX, a high performance computing (HPC), distributed memory runtime system, providing parallelism and asynchronous global address space support.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hpx-main".dir   = "main";
  inputs."hpx-main".owner = "nim-nix-pkgs";
  inputs."hpx-main".ref   = "master";
  inputs."hpx-main".repo  = "hpx";
  inputs."hpx-main".type  = "github";
  inputs."hpx-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpx-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
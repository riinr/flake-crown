{
  description = ''Low-level wrapper for OpenCL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opencl-master".dir   = "master";
  inputs."opencl-master".owner = "nim-nix-pkgs";
  inputs."opencl-master".ref   = "master";
  inputs."opencl-master".repo  = "opencl";
  inputs."opencl-master".type  = "github";
  inputs."opencl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opencl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
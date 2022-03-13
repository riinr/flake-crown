{
  description = ''Nearly zero-overhead input/output streams for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."faststreams-master".dir   = "master";
  inputs."faststreams-master".owner = "nim-nix-pkgs";
  inputs."faststreams-master".ref   = "master";
  inputs."faststreams-master".repo  = "faststreams";
  inputs."faststreams-master".type  = "github";
  inputs."faststreams-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."faststreams-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
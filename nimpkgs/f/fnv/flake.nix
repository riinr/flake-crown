{
  description = ''FNV-1 and FNV-1a non-cryptographic hash functions (documentation hosted at: http://ryuk.ooo/nimdocs/fnv/fnv.html)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fnv-devel".dir   = "devel";
  inputs."fnv-devel".owner = "nim-nix-pkgs";
  inputs."fnv-devel".ref   = "master";
  inputs."fnv-devel".repo  = "fnv";
  inputs."fnv-devel".type  = "github";
  inputs."fnv-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fnv-master".dir   = "master";
  inputs."fnv-master".owner = "nim-nix-pkgs";
  inputs."fnv-master".ref   = "master";
  inputs."fnv-master".repo  = "fnv";
  inputs."fnv-master".type  = "github";
  inputs."fnv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fnv-0_1_0".dir   = "0_1_0";
  inputs."fnv-0_1_0".owner = "nim-nix-pkgs";
  inputs."fnv-0_1_0".ref   = "master";
  inputs."fnv-0_1_0".repo  = "fnv";
  inputs."fnv-0_1_0".type  = "github";
  inputs."fnv-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fnv-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
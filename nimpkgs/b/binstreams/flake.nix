{
  description = ''Endianness aware stream I/O for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binstreams-master".dir   = "master";
  inputs."binstreams-master".owner = "nim-nix-pkgs";
  inputs."binstreams-master".ref   = "master";
  inputs."binstreams-master".repo  = "binstreams";
  inputs."binstreams-master".type  = "github";
  inputs."binstreams-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binstreams-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binstreams-v0_1_0".dir   = "v0_1_0";
  inputs."binstreams-v0_1_0".owner = "nim-nix-pkgs";
  inputs."binstreams-v0_1_0".ref   = "master";
  inputs."binstreams-v0_1_0".repo  = "binstreams";
  inputs."binstreams-v0_1_0".type  = "github";
  inputs."binstreams-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binstreams-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binstreams-v0_1_1".dir   = "v0_1_1";
  inputs."binstreams-v0_1_1".owner = "nim-nix-pkgs";
  inputs."binstreams-v0_1_1".ref   = "master";
  inputs."binstreams-v0_1_1".repo  = "binstreams";
  inputs."binstreams-v0_1_1".type  = "github";
  inputs."binstreams-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binstreams-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binstreams-v0_2_0".dir   = "v0_2_0";
  inputs."binstreams-v0_2_0".owner = "nim-nix-pkgs";
  inputs."binstreams-v0_2_0".ref   = "master";
  inputs."binstreams-v0_2_0".repo  = "binstreams";
  inputs."binstreams-v0_2_0".type  = "github";
  inputs."binstreams-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binstreams-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
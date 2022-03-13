{
  description = ''HPACK (Header Compression for HTTP/2)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hpack-master".dir   = "master";
  inputs."hpack-master".owner = "nim-nix-pkgs";
  inputs."hpack-master".ref   = "master";
  inputs."hpack-master".repo  = "hpack";
  inputs."hpack-master".type  = "github";
  inputs."hpack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpack-v0_1".dir   = "v0_1";
  inputs."hpack-v0_1".owner = "nim-nix-pkgs";
  inputs."hpack-v0_1".ref   = "master";
  inputs."hpack-v0_1".repo  = "hpack";
  inputs."hpack-v0_1".type  = "github";
  inputs."hpack-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpack-v0_1_1".dir   = "v0_1_1";
  inputs."hpack-v0_1_1".owner = "nim-nix-pkgs";
  inputs."hpack-v0_1_1".ref   = "master";
  inputs."hpack-v0_1_1".repo  = "hpack";
  inputs."hpack-v0_1_1".type  = "github";
  inputs."hpack-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpack-v0_2_0".dir   = "v0_2_0";
  inputs."hpack-v0_2_0".owner = "nim-nix-pkgs";
  inputs."hpack-v0_2_0".ref   = "master";
  inputs."hpack-v0_2_0".repo  = "hpack";
  inputs."hpack-v0_2_0".type  = "github";
  inputs."hpack-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpack-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
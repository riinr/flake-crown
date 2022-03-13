{
  description = ''Pure nim implementation of MurmurHash'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."murmurhash-master".dir   = "master";
  inputs."murmurhash-master".owner = "nim-nix-pkgs";
  inputs."murmurhash-master".ref   = "master";
  inputs."murmurhash-master".repo  = "murmurhash";
  inputs."murmurhash-master".type  = "github";
  inputs."murmurhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmurhash-0_3_0".dir   = "0_3_0";
  inputs."murmurhash-0_3_0".owner = "nim-nix-pkgs";
  inputs."murmurhash-0_3_0".ref   = "master";
  inputs."murmurhash-0_3_0".repo  = "murmurhash";
  inputs."murmurhash-0_3_0".type  = "github";
  inputs."murmurhash-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmurhash-0_4_0".dir   = "0_4_0";
  inputs."murmurhash-0_4_0".owner = "nim-nix-pkgs";
  inputs."murmurhash-0_4_0".ref   = "master";
  inputs."murmurhash-0_4_0".repo  = "murmurhash";
  inputs."murmurhash-0_4_0".type  = "github";
  inputs."murmurhash-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmurhash-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
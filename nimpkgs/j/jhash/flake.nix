{
  description = ''Jenkins Hasher producing 32 bit digests'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jhash-master".dir   = "master";
  inputs."jhash-master".owner = "nim-nix-pkgs";
  inputs."jhash-master".ref   = "master";
  inputs."jhash-master".repo  = "jhash";
  inputs."jhash-master".type  = "github";
  inputs."jhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jhash-v0_1_0".dir   = "v0_1_0";
  inputs."jhash-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jhash-v0_1_0".ref   = "master";
  inputs."jhash-v0_1_0".repo  = "jhash";
  inputs."jhash-v0_1_0".type  = "github";
  inputs."jhash-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jhash-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jhash-v0_1_1".dir   = "v0_1_1";
  inputs."jhash-v0_1_1".owner = "nim-nix-pkgs";
  inputs."jhash-v0_1_1".ref   = "master";
  inputs."jhash-v0_1_1".repo  = "jhash";
  inputs."jhash-v0_1_1".type  = "github";
  inputs."jhash-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jhash-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jhash-v0_1_2".dir   = "v0_1_2";
  inputs."jhash-v0_1_2".owner = "nim-nix-pkgs";
  inputs."jhash-v0_1_2".ref   = "master";
  inputs."jhash-v0_1_2".repo  = "jhash";
  inputs."jhash-v0_1_2".type  = "github";
  inputs."jhash-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jhash-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A db_sqlite fork with a proper typing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndb-master".dir   = "master";
  inputs."ndb-master".owner = "nim-nix-pkgs";
  inputs."ndb-master".ref   = "master";
  inputs."ndb-master".repo  = "ndb";
  inputs."ndb-master".type  = "github";
  inputs."ndb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_0".dir   = "v0_19_0";
  inputs."ndb-v0_19_0".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_0".ref   = "master";
  inputs."ndb-v0_19_0".repo  = "ndb";
  inputs."ndb-v0_19_0".type  = "github";
  inputs."ndb-v0_19_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_1".dir   = "v0_19_1";
  inputs."ndb-v0_19_1".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_1".ref   = "master";
  inputs."ndb-v0_19_1".repo  = "ndb";
  inputs."ndb-v0_19_1".type  = "github";
  inputs."ndb-v0_19_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_2".dir   = "v0_19_2";
  inputs."ndb-v0_19_2".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_2".ref   = "master";
  inputs."ndb-v0_19_2".repo  = "ndb";
  inputs."ndb-v0_19_2".type  = "github";
  inputs."ndb-v0_19_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_3".dir   = "v0_19_3";
  inputs."ndb-v0_19_3".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_3".ref   = "master";
  inputs."ndb-v0_19_3".repo  = "ndb";
  inputs."ndb-v0_19_3".type  = "github";
  inputs."ndb-v0_19_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_4".dir   = "v0_19_4";
  inputs."ndb-v0_19_4".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_4".ref   = "master";
  inputs."ndb-v0_19_4".repo  = "ndb";
  inputs."ndb-v0_19_4".type  = "github";
  inputs."ndb-v0_19_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_5".dir   = "v0_19_5";
  inputs."ndb-v0_19_5".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_5".ref   = "master";
  inputs."ndb-v0_19_5".repo  = "ndb";
  inputs."ndb-v0_19_5".type  = "github";
  inputs."ndb-v0_19_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_6".dir   = "v0_19_6";
  inputs."ndb-v0_19_6".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_6".ref   = "master";
  inputs."ndb-v0_19_6".repo  = "ndb";
  inputs."ndb-v0_19_6".type  = "github";
  inputs."ndb-v0_19_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_7".dir   = "v0_19_7";
  inputs."ndb-v0_19_7".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_7".ref   = "master";
  inputs."ndb-v0_19_7".repo  = "ndb";
  inputs."ndb-v0_19_7".type  = "github";
  inputs."ndb-v0_19_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_8".dir   = "v0_19_8";
  inputs."ndb-v0_19_8".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_8".ref   = "master";
  inputs."ndb-v0_19_8".repo  = "ndb";
  inputs."ndb-v0_19_8".type  = "github";
  inputs."ndb-v0_19_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb-v0_19_9".dir   = "v0_19_9";
  inputs."ndb-v0_19_9".owner = "nim-nix-pkgs";
  inputs."ndb-v0_19_9".ref   = "master";
  inputs."ndb-v0_19_9".repo  = "ndb";
  inputs."ndb-v0_19_9".type  = "github";
  inputs."ndb-v0_19_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb-v0_19_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
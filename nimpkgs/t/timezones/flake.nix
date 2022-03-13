{
  description = ''Timezone library compatible with the standard library. '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timezones-master".dir   = "master";
  inputs."timezones-master".owner = "nim-nix-pkgs";
  inputs."timezones-master".ref   = "master";
  inputs."timezones-master".repo  = "timezones";
  inputs."timezones-master".type  = "github";
  inputs."timezones-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_2_0".dir   = "v0_2_0";
  inputs."timezones-v0_2_0".owner = "nim-nix-pkgs";
  inputs."timezones-v0_2_0".ref   = "master";
  inputs."timezones-v0_2_0".repo  = "timezones";
  inputs."timezones-v0_2_0".type  = "github";
  inputs."timezones-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_2_1".dir   = "v0_2_1";
  inputs."timezones-v0_2_1".owner = "nim-nix-pkgs";
  inputs."timezones-v0_2_1".ref   = "master";
  inputs."timezones-v0_2_1".repo  = "timezones";
  inputs."timezones-v0_2_1".type  = "github";
  inputs."timezones-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_3_0".dir   = "v0_3_0";
  inputs."timezones-v0_3_0".owner = "nim-nix-pkgs";
  inputs."timezones-v0_3_0".ref   = "master";
  inputs."timezones-v0_3_0".repo  = "timezones";
  inputs."timezones-v0_3_0".type  = "github";
  inputs."timezones-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_0".dir   = "v0_4_0";
  inputs."timezones-v0_4_0".owner = "nim-nix-pkgs";
  inputs."timezones-v0_4_0".ref   = "master";
  inputs."timezones-v0_4_0".repo  = "timezones";
  inputs."timezones-v0_4_0".type  = "github";
  inputs."timezones-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_1".dir   = "v0_4_1";
  inputs."timezones-v0_4_1".owner = "nim-nix-pkgs";
  inputs."timezones-v0_4_1".ref   = "master";
  inputs."timezones-v0_4_1".repo  = "timezones";
  inputs."timezones-v0_4_1".type  = "github";
  inputs."timezones-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_2".dir   = "v0_4_2";
  inputs."timezones-v0_4_2".owner = "nim-nix-pkgs";
  inputs."timezones-v0_4_2".ref   = "master";
  inputs."timezones-v0_4_2".repo  = "timezones";
  inputs."timezones-v0_4_2".type  = "github";
  inputs."timezones-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_4_3".dir   = "v0_4_3";
  inputs."timezones-v0_4_3".owner = "nim-nix-pkgs";
  inputs."timezones-v0_4_3".ref   = "master";
  inputs."timezones-v0_4_3".repo  = "timezones";
  inputs."timezones-v0_4_3".type  = "github";
  inputs."timezones-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_0".dir   = "v0_5_0";
  inputs."timezones-v0_5_0".owner = "nim-nix-pkgs";
  inputs."timezones-v0_5_0".ref   = "master";
  inputs."timezones-v0_5_0".repo  = "timezones";
  inputs."timezones-v0_5_0".type  = "github";
  inputs."timezones-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_1".dir   = "v0_5_1";
  inputs."timezones-v0_5_1".owner = "nim-nix-pkgs";
  inputs."timezones-v0_5_1".ref   = "master";
  inputs."timezones-v0_5_1".repo  = "timezones";
  inputs."timezones-v0_5_1".type  = "github";
  inputs."timezones-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_2".dir   = "v0_5_2";
  inputs."timezones-v0_5_2".owner = "nim-nix-pkgs";
  inputs."timezones-v0_5_2".ref   = "master";
  inputs."timezones-v0_5_2".repo  = "timezones";
  inputs."timezones-v0_5_2".type  = "github";
  inputs."timezones-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_3".dir   = "v0_5_3";
  inputs."timezones-v0_5_3".owner = "nim-nix-pkgs";
  inputs."timezones-v0_5_3".ref   = "master";
  inputs."timezones-v0_5_3".repo  = "timezones";
  inputs."timezones-v0_5_3".type  = "github";
  inputs."timezones-v0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones-v0_5_4".dir   = "v0_5_4";
  inputs."timezones-v0_5_4".owner = "nim-nix-pkgs";
  inputs."timezones-v0_5_4".ref   = "master";
  inputs."timezones-v0_5_4".repo  = "timezones";
  inputs."timezones-v0_5_4".type  = "github";
  inputs."timezones-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
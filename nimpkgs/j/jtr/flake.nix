{
  description = ''jtr is a commmand of JSON tree viewer with type'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jtr-master".dir   = "master";
  inputs."jtr-master".owner = "nim-nix-pkgs";
  inputs."jtr-master".ref   = "master";
  inputs."jtr-master".repo  = "jtr";
  inputs."jtr-master".type  = "github";
  inputs."jtr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-master".dir   = "master";
  inputs."jtr-master".owner = "nim-nix-pkgs";
  inputs."jtr-master".ref   = "master";
  inputs."jtr-master".repo  = "jtr";
  inputs."jtr-master".type  = "github";
  inputs."jtr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_1_0".dir   = "v0_1_0";
  inputs."jtr-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jtr-v0_1_0".ref   = "master";
  inputs."jtr-v0_1_0".repo  = "jtr";
  inputs."jtr-v0_1_0".type  = "github";
  inputs."jtr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_0".dir   = "v0_2_0";
  inputs."jtr-v0_2_0".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_0".ref   = "master";
  inputs."jtr-v0_2_0".repo  = "jtr";
  inputs."jtr-v0_2_0".type  = "github";
  inputs."jtr-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_1".dir   = "v0_2_1";
  inputs."jtr-v0_2_1".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_1".ref   = "master";
  inputs."jtr-v0_2_1".repo  = "jtr";
  inputs."jtr-v0_2_1".type  = "github";
  inputs."jtr-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_2".dir   = "v0_2_2";
  inputs."jtr-v0_2_2".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_2".ref   = "master";
  inputs."jtr-v0_2_2".repo  = "jtr";
  inputs."jtr-v0_2_2".type  = "github";
  inputs."jtr-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_3".dir   = "v0_2_3";
  inputs."jtr-v0_2_3".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_3".ref   = "master";
  inputs."jtr-v0_2_3".repo  = "jtr";
  inputs."jtr-v0_2_3".type  = "github";
  inputs."jtr-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_4".dir   = "v0_2_4";
  inputs."jtr-v0_2_4".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_4".ref   = "master";
  inputs."jtr-v0_2_4".repo  = "jtr";
  inputs."jtr-v0_2_4".type  = "github";
  inputs."jtr-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_5".dir   = "v0_2_5";
  inputs."jtr-v0_2_5".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_5".ref   = "master";
  inputs."jtr-v0_2_5".repo  = "jtr";
  inputs."jtr-v0_2_5".type  = "github";
  inputs."jtr-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_6".dir   = "v0_2_6";
  inputs."jtr-v0_2_6".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_6".ref   = "master";
  inputs."jtr-v0_2_6".repo  = "jtr";
  inputs."jtr-v0_2_6".type  = "github";
  inputs."jtr-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_7".dir   = "v0_2_7";
  inputs."jtr-v0_2_7".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_7".ref   = "master";
  inputs."jtr-v0_2_7".repo  = "jtr";
  inputs."jtr-v0_2_7".type  = "github";
  inputs."jtr-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jtr-v0_2_8".dir   = "v0_2_8";
  inputs."jtr-v0_2_8".owner = "nim-nix-pkgs";
  inputs."jtr-v0_2_8".ref   = "master";
  inputs."jtr-v0_2_8".repo  = "jtr";
  inputs."jtr-v0_2_8".type  = "github";
  inputs."jtr-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jtr-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
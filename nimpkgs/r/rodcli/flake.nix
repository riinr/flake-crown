{
  description = ''making Nim development easier in the command-line'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rodcli-master".dir   = "master";
  inputs."rodcli-master".owner = "nim-nix-pkgs";
  inputs."rodcli-master".ref   = "master";
  inputs."rodcli-master".repo  = "rodcli";
  inputs."rodcli-master".type  = "github";
  inputs."rodcli-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_2".dir   = "v0_1_2";
  inputs."rodcli-v0_1_2".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_2".ref   = "master";
  inputs."rodcli-v0_1_2".repo  = "rodcli";
  inputs."rodcli-v0_1_2".type  = "github";
  inputs."rodcli-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_3".dir   = "v0_1_3";
  inputs."rodcli-v0_1_3".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_3".ref   = "master";
  inputs."rodcli-v0_1_3".repo  = "rodcli";
  inputs."rodcli-v0_1_3".type  = "github";
  inputs."rodcli-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_4".dir   = "v0_1_4";
  inputs."rodcli-v0_1_4".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_4".ref   = "master";
  inputs."rodcli-v0_1_4".repo  = "rodcli";
  inputs."rodcli-v0_1_4".type  = "github";
  inputs."rodcli-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_5".dir   = "v0_1_5";
  inputs."rodcli-v0_1_5".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_5".ref   = "master";
  inputs."rodcli-v0_1_5".repo  = "rodcli";
  inputs."rodcli-v0_1_5".type  = "github";
  inputs."rodcli-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_6".dir   = "v0_1_6";
  inputs."rodcli-v0_1_6".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_6".ref   = "master";
  inputs."rodcli-v0_1_6".repo  = "rodcli";
  inputs."rodcli-v0_1_6".type  = "github";
  inputs."rodcli-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_7".dir   = "v0_1_7";
  inputs."rodcli-v0_1_7".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_7".ref   = "master";
  inputs."rodcli-v0_1_7".repo  = "rodcli";
  inputs."rodcli-v0_1_7".type  = "github";
  inputs."rodcli-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_8".dir   = "v0_1_8";
  inputs."rodcli-v0_1_8".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_8".ref   = "master";
  inputs."rodcli-v0_1_8".repo  = "rodcli";
  inputs."rodcli-v0_1_8".type  = "github";
  inputs."rodcli-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rodcli-v0_1_9".dir   = "v0_1_9";
  inputs."rodcli-v0_1_9".owner = "nim-nix-pkgs";
  inputs."rodcli-v0_1_9".ref   = "master";
  inputs."rodcli-v0_1_9".repo  = "rodcli";
  inputs."rodcli-v0_1_9".type  = "github";
  inputs."rodcli-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rodcli-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Temporary files and directories'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tempfile-master".dir   = "master";
  inputs."tempfile-master".owner = "nim-nix-pkgs";
  inputs."tempfile-master".ref   = "master";
  inputs."tempfile-master".repo  = "tempfile";
  inputs."tempfile-master".type  = "github";
  inputs."tempfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-0_1_5".dir   = "0_1_5";
  inputs."tempfile-0_1_5".owner = "nim-nix-pkgs";
  inputs."tempfile-0_1_5".ref   = "master";
  inputs."tempfile-0_1_5".repo  = "tempfile";
  inputs."tempfile-0_1_5".type  = "github";
  inputs."tempfile-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-0_1_6".dir   = "0_1_6";
  inputs."tempfile-0_1_6".owner = "nim-nix-pkgs";
  inputs."tempfile-0_1_6".ref   = "master";
  inputs."tempfile-0_1_6".repo  = "tempfile";
  inputs."tempfile-0_1_6".type  = "github";
  inputs."tempfile-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-0_1_7".dir   = "0_1_7";
  inputs."tempfile-0_1_7".owner = "nim-nix-pkgs";
  inputs."tempfile-0_1_7".ref   = "master";
  inputs."tempfile-0_1_7".repo  = "tempfile";
  inputs."tempfile-0_1_7".type  = "github";
  inputs."tempfile-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-v_0_1_3".dir   = "v_0_1_3";
  inputs."tempfile-v_0_1_3".owner = "nim-nix-pkgs";
  inputs."tempfile-v_0_1_3".ref   = "master";
  inputs."tempfile-v_0_1_3".repo  = "tempfile";
  inputs."tempfile-v_0_1_3".type  = "github";
  inputs."tempfile-v_0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-v_0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-v0_1_1".dir   = "v0_1_1";
  inputs."tempfile-v0_1_1".owner = "nim-nix-pkgs";
  inputs."tempfile-v0_1_1".ref   = "master";
  inputs."tempfile-v0_1_1".repo  = "tempfile";
  inputs."tempfile-v0_1_1".type  = "github";
  inputs."tempfile-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-v0_1_2".dir   = "v0_1_2";
  inputs."tempfile-v0_1_2".owner = "nim-nix-pkgs";
  inputs."tempfile-v0_1_2".ref   = "master";
  inputs."tempfile-v0_1_2".repo  = "tempfile";
  inputs."tempfile-v0_1_2".type  = "github";
  inputs."tempfile-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile-v0_1_4".dir   = "v0_1_4";
  inputs."tempfile-v0_1_4".owner = "nim-nix-pkgs";
  inputs."tempfile-v0_1_4".ref   = "master";
  inputs."tempfile-v0_1_4".repo  = "tempfile";
  inputs."tempfile-v0_1_4".type  = "github";
  inputs."tempfile-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
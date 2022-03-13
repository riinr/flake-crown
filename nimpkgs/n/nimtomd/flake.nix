{
  description = ''Convert a Nim file or string to Markdown'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtomd-master".dir   = "master";
  inputs."nimtomd-master".owner = "nim-nix-pkgs";
  inputs."nimtomd-master".ref   = "master";
  inputs."nimtomd-master".repo  = "nimtomd";
  inputs."nimtomd-master".type  = "github";
  inputs."nimtomd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtomd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtomd-v0_2_0".dir   = "v0_2_0";
  inputs."nimtomd-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimtomd-v0_2_0".ref   = "master";
  inputs."nimtomd-v0_2_0".repo  = "nimtomd";
  inputs."nimtomd-v0_2_0".type  = "github";
  inputs."nimtomd-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtomd-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtomd-v0_2_1".dir   = "v0_2_1";
  inputs."nimtomd-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimtomd-v0_2_1".ref   = "master";
  inputs."nimtomd-v0_2_1".repo  = "nimtomd";
  inputs."nimtomd-v0_2_1".type  = "github";
  inputs."nimtomd-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtomd-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtomd-v0_3_1".dir   = "v0_3_1";
  inputs."nimtomd-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimtomd-v0_3_1".ref   = "master";
  inputs."nimtomd-v0_3_1".repo  = "nimtomd";
  inputs."nimtomd-v0_3_1".type  = "github";
  inputs."nimtomd-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtomd-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
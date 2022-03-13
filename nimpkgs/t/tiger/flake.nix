{
  description = ''Tiger hash function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tiger-master".dir   = "master";
  inputs."tiger-master".owner = "nim-nix-pkgs";
  inputs."tiger-master".ref   = "master";
  inputs."tiger-master".repo  = "tiger";
  inputs."tiger-master".type  = "github";
  inputs."tiger-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiger-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiger-v0_1".dir   = "v0_1";
  inputs."tiger-v0_1".owner = "nim-nix-pkgs";
  inputs."tiger-v0_1".ref   = "master";
  inputs."tiger-v0_1".repo  = "tiger";
  inputs."tiger-v0_1".type  = "github";
  inputs."tiger-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiger-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiger-v0_2".dir   = "v0_2";
  inputs."tiger-v0_2".owner = "nim-nix-pkgs";
  inputs."tiger-v0_2".ref   = "master";
  inputs."tiger-v0_2".repo  = "tiger";
  inputs."tiger-v0_2".type  = "github";
  inputs."tiger-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiger-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiger-v0_2_1".dir   = "v0_2_1";
  inputs."tiger-v0_2_1".owner = "nim-nix-pkgs";
  inputs."tiger-v0_2_1".ref   = "master";
  inputs."tiger-v0_2_1".repo  = "tiger";
  inputs."tiger-v0_2_1".type  = "github";
  inputs."tiger-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiger-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
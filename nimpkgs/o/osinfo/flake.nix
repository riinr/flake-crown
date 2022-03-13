{
  description = ''Modules providing information about the OS.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."osinfo-master".dir   = "master";
  inputs."osinfo-master".owner = "nim-nix-pkgs";
  inputs."osinfo-master".ref   = "master";
  inputs."osinfo-master".repo  = "osinfo";
  inputs."osinfo-master".type  = "github";
  inputs."osinfo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo-v0_2_0".dir   = "v0_2_0";
  inputs."osinfo-v0_2_0".owner = "nim-nix-pkgs";
  inputs."osinfo-v0_2_0".ref   = "master";
  inputs."osinfo-v0_2_0".repo  = "osinfo";
  inputs."osinfo-v0_2_0".type  = "github";
  inputs."osinfo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo-v0_3_1".dir   = "v0_3_1";
  inputs."osinfo-v0_3_1".owner = "nim-nix-pkgs";
  inputs."osinfo-v0_3_1".ref   = "master";
  inputs."osinfo-v0_3_1".repo  = "osinfo";
  inputs."osinfo-v0_3_1".type  = "github";
  inputs."osinfo-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo-v0_3_2".dir   = "v0_3_2";
  inputs."osinfo-v0_3_2".owner = "nim-nix-pkgs";
  inputs."osinfo-v0_3_2".ref   = "master";
  inputs."osinfo-v0_3_2".repo  = "osinfo";
  inputs."osinfo-v0_3_2".type  = "github";
  inputs."osinfo-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
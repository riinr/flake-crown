{
  description = ''Command to add counter suffix/prefix to a list of files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."number_files-master".dir   = "master";
  inputs."number_files-master".owner = "nim-nix-pkgs";
  inputs."number_files-master".ref   = "master";
  inputs."number_files-master".repo  = "number_files";
  inputs."number_files-master".type  = "github";
  inputs."number_files-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."number_files-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."number_files-v0_2_0".dir   = "v0_2_0";
  inputs."number_files-v0_2_0".owner = "nim-nix-pkgs";
  inputs."number_files-v0_2_0".ref   = "master";
  inputs."number_files-v0_2_0".repo  = "number_files";
  inputs."number_files-v0_2_0".type  = "github";
  inputs."number_files-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."number_files-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."number_files-v0_2_2".dir   = "v0_2_2";
  inputs."number_files-v0_2_2".owner = "nim-nix-pkgs";
  inputs."number_files-v0_2_2".ref   = "master";
  inputs."number_files-v0_2_2".repo  = "number_files";
  inputs."number_files-v0_2_2".type  = "github";
  inputs."number_files-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."number_files-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
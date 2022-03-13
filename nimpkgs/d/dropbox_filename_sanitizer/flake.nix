{
  description = ''Tool to clean up filenames shared on Dropbox'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dropbox_filename_sanitizer-master".dir   = "master";
  inputs."dropbox_filename_sanitizer-master".owner = "nim-nix-pkgs";
  inputs."dropbox_filename_sanitizer-master".ref   = "master";
  inputs."dropbox_filename_sanitizer-master".repo  = "dropbox_filename_sanitizer";
  inputs."dropbox_filename_sanitizer-master".type  = "github";
  inputs."dropbox_filename_sanitizer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dropbox_filename_sanitizer-v0_2_1".dir   = "v0_2_1";
  inputs."dropbox_filename_sanitizer-v0_2_1".owner = "nim-nix-pkgs";
  inputs."dropbox_filename_sanitizer-v0_2_1".ref   = "master";
  inputs."dropbox_filename_sanitizer-v0_2_1".repo  = "dropbox_filename_sanitizer";
  inputs."dropbox_filename_sanitizer-v0_2_1".type  = "github";
  inputs."dropbox_filename_sanitizer-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dropbox_filename_sanitizer-v0_4_0".dir   = "v0_4_0";
  inputs."dropbox_filename_sanitizer-v0_4_0".owner = "nim-nix-pkgs";
  inputs."dropbox_filename_sanitizer-v0_4_0".ref   = "master";
  inputs."dropbox_filename_sanitizer-v0_4_0".repo  = "dropbox_filename_sanitizer";
  inputs."dropbox_filename_sanitizer-v0_4_0".type  = "github";
  inputs."dropbox_filename_sanitizer-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
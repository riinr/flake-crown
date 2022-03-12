{
  description = ''Tool to clean up filenames shared on Dropbox'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dropbox_filename_sanitizer-master".url = "path:./master";
  inputs."dropbox_filename_sanitizer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dropbox_filename_sanitizer-v0_2_1".url = "path:./v0_2_1";
  inputs."dropbox_filename_sanitizer-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dropbox_filename_sanitizer-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dropbox_filename_sanitizer-v0_4_0".url = "path:./v0_4_0";
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
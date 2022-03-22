{
  description = ''Tool to clean up filenames shared on Dropbox'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dropbox_filename_sanitizer-v0_2_1.flake = false;
  inputs.src-dropbox_filename_sanitizer-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.owner = "Araq";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.repo  = "dropbox_filename_sanitizer";
  inputs.src-dropbox_filename_sanitizer-v0_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dropbox_filename_sanitizer-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dropbox_filename_sanitizer-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
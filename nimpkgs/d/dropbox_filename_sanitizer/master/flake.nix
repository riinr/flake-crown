{
  description = ''Tool to clean up filenames shared on Dropbox'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dropbox_filename_sanitizer-master.flake = false;
  inputs.src-dropbox_filename_sanitizer-master.owner = "Araq";
  inputs.src-dropbox_filename_sanitizer-master.ref   = "refs/heads/master";
  inputs.src-dropbox_filename_sanitizer-master.repo  = "dropbox_filename_sanitizer";
  inputs.src-dropbox_filename_sanitizer-master.type  = "github";
  
  inputs."nake".dir   = "nimpkgs/n/nake";
  inputs."nake".owner = "riinr";
  inputs."nake".ref   = "flake-pinning";
  inputs."nake".repo  = "flake-nimble";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argument_parser".dir   = "nimpkgs/a/argument_parser";
  inputs."argument_parser".owner = "riinr";
  inputs."argument_parser".ref   = "flake-pinning";
  inputs."argument_parser".repo  = "flake-nimble";
  inputs."argument_parser".type  = "github";
  inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/gradha/badger_bits.git".dir   = "nimpkgs/h/https://github.com/gradha/badger_bits.git";
  inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  inputs."https://github.com/gradha/badger_bits.git".ref   = "flake-pinning";
  inputs."https://github.com/gradha/badger_bits.git".repo  = "flake-nimble";
  inputs."https://github.com/gradha/badger_bits.git".type  = "github";
  inputs."https://github.com/gradha/badger_bits.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/gradha/badger_bits.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dropbox_filename_sanitizer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dropbox_filename_sanitizer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
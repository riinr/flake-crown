{
  description = ''FastQ and Fasta readers for NIM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fastx_reader-master".dir   = "master";
  inputs."fastx_reader-master".owner = "nim-nix-pkgs";
  inputs."fastx_reader-master".ref   = "master";
  inputs."fastx_reader-master".repo  = "fastx_reader";
  inputs."fastx_reader-master".type  = "github";
  inputs."fastx_reader-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastx_reader-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
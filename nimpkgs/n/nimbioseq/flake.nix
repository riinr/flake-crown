{
  description = ''Nim Library for sequence (protein/nucleotide) bioinformatics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbioseq-master".dir   = "master";
  inputs."nimbioseq-master".owner = "nim-nix-pkgs";
  inputs."nimbioseq-master".ref   = "master";
  inputs."nimbioseq-master".repo  = "nimbioseq";
  inputs."nimbioseq-master".type  = "github";
  inputs."nimbioseq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbioseq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
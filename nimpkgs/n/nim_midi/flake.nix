{
  description = ''Read and write midi files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_midi-master".dir   = "master";
  inputs."nim_midi-master".owner = "nim-nix-pkgs";
  inputs."nim_midi-master".ref   = "master";
  inputs."nim_midi-master".repo  = "nim_midi";
  inputs."nim_midi-master".type  = "github";
  inputs."nim_midi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_midi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
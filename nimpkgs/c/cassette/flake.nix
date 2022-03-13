{
  description = ''Record and replay your HTTP sessions!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cassette-master".dir   = "master";
  inputs."cassette-master".owner = "nim-nix-pkgs";
  inputs."cassette-master".ref   = "master";
  inputs."cassette-master".repo  = "cassette";
  inputs."cassette-master".type  = "github";
  inputs."cassette-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cassette-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
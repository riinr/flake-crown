{
  description = ''Python requirements.txt generic parser for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."requirementstxt-master".dir   = "master";
  inputs."requirementstxt-master".owner = "nim-nix-pkgs";
  inputs."requirementstxt-master".ref   = "master";
  inputs."requirementstxt-master".repo  = "requirementstxt";
  inputs."requirementstxt-master".type  = "github";
  inputs."requirementstxt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."requirementstxt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
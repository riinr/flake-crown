{
  description = ''wrapper for the notmuch mail library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notmuch-master".dir   = "master";
  inputs."notmuch-master".owner = "nim-nix-pkgs";
  inputs."notmuch-master".ref   = "master";
  inputs."notmuch-master".repo  = "notmuch";
  inputs."notmuch-master".type  = "github";
  inputs."notmuch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notmuch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
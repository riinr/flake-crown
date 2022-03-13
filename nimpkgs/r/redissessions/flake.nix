{
  description = ''Redis-backed sessions for jester'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redissessions-master".dir   = "master";
  inputs."redissessions-master".owner = "nim-nix-pkgs";
  inputs."redissessions-master".ref   = "master";
  inputs."redissessions-master".repo  = "redissessions";
  inputs."redissessions-master".type  = "github";
  inputs."redissessions-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redissessions-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
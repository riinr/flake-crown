{
  description = ''A compact dictionary implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."compactdict-master".dir   = "master";
  inputs."compactdict-master".owner = "nim-nix-pkgs";
  inputs."compactdict-master".ref   = "master";
  inputs."compactdict-master".repo  = "compactdict";
  inputs."compactdict-master".type  = "github";
  inputs."compactdict-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compactdict-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Rename files to their sha1sums'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shaname-master".dir   = "master";
  inputs."shaname-master".owner = "nim-nix-pkgs";
  inputs."shaname-master".ref   = "master";
  inputs."shaname-master".repo  = "shaname";
  inputs."shaname-master".type  = "github";
  inputs."shaname-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shaname-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
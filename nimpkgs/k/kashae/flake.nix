{
  description = ''Calculation caching library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kashae-master".dir   = "master";
  inputs."kashae-master".owner = "nim-nix-pkgs";
  inputs."kashae-master".ref   = "master";
  inputs."kashae-master".repo  = "kashae";
  inputs."kashae-master".type  = "github";
  inputs."kashae-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kashae-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
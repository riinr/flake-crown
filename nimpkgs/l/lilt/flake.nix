{
  description = ''Parsing language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lilt-master".dir   = "master";
  inputs."lilt-master".owner = "nim-nix-pkgs";
  inputs."lilt-master".ref   = "master";
  inputs."lilt-master".repo  = "lilt";
  inputs."lilt-master".type  = "github";
  inputs."lilt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lilt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
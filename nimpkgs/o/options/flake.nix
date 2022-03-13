{
  description = ''Temporary package to fix broken code in 0.11.2 stable.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."options-master".dir   = "master";
  inputs."options-master".owner = "nim-nix-pkgs";
  inputs."options-master".ref   = "master";
  inputs."options-master".repo  = "options";
  inputs."options-master".type  = "github";
  inputs."options-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."options-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
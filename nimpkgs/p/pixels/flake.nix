{
  description = ''Toy support library for primitive graphics programming.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pixels-master".dir   = "master";
  inputs."pixels-master".owner = "nim-nix-pkgs";
  inputs."pixels-master".ref   = "master";
  inputs."pixels-master".repo  = "pixels";
  inputs."pixels-master".type  = "github";
  inputs."pixels-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixels-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
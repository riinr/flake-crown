{
  description = ''Provides a macro to curry function'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_curry-master".dir   = "master";
  inputs."nim_curry-master".owner = "nim-nix-pkgs";
  inputs."nim_curry-master".ref   = "master";
  inputs."nim_curry-master".repo  = "nim_curry";
  inputs."nim_curry-master".type  = "github";
  inputs."nim_curry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_curry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
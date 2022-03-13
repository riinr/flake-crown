{
  description = ''wrapper for the Duktape embeddable Javascript engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."duktape-master".dir   = "master";
  inputs."duktape-master".owner = "nim-nix-pkgs";
  inputs."duktape-master".ref   = "master";
  inputs."duktape-master".repo  = "duktape";
  inputs."duktape-master".type  = "github";
  inputs."duktape-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."duktape-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
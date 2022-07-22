{
  description = ''Module that imports common nim standard library modules for your convenience'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."batteries-main".dir   = "main";
  inputs."batteries-main".owner = "nim-nix-pkgs";
  inputs."batteries-main".ref   = "master";
  inputs."batteries-main".repo  = "batteries";
  inputs."batteries-main".type  = "github";
  inputs."batteries-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."batteries-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
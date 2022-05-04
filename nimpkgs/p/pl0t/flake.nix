{
  description = ''Plot and visualize data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pl0t-main".dir   = "main";
  inputs."pl0t-main".owner = "nim-nix-pkgs";
  inputs."pl0t-main".ref   = "master";
  inputs."pl0t-main".repo  = "pl0t";
  inputs."pl0t-main".type  = "github";
  inputs."pl0t-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pl0t-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
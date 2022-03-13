{
  description = ''Convert Ogham inscriptions to latin text & vice versa.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ogham-main".dir   = "main";
  inputs."ogham-main".owner = "nim-nix-pkgs";
  inputs."ogham-main".ref   = "master";
  inputs."ogham-main".repo  = "ogham";
  inputs."ogham-main".type  = "github";
  inputs."ogham-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ogham-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
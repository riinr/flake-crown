{
  description = ''Create beautiful command line interfaces in Nim. Based on docopt.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."klymene-main".dir   = "main";
  inputs."klymene-main".owner = "nim-nix-pkgs";
  inputs."klymene-main".ref   = "master";
  inputs."klymene-main".repo  = "klymene";
  inputs."klymene-main".type  = "github";
  inputs."klymene-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."klymene-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Small library for working with strings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."prettystr-main".dir   = "main";
  inputs."prettystr-main".owner = "nim-nix-pkgs";
  inputs."prettystr-main".ref   = "master";
  inputs."prettystr-main".repo  = "prettystr";
  inputs."prettystr-main".type  = "github";
  inputs."prettystr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prettystr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Drawing in terminal with Unicode Braille characters.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."drawille-master".dir   = "master";
  inputs."drawille-master".owner = "nim-nix-pkgs";
  inputs."drawille-master".ref   = "master";
  inputs."drawille-master".repo  = "drawille";
  inputs."drawille-master".type  = "github";
  inputs."drawille-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."drawille-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
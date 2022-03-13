{
  description = ''colorizeEcho is a package which colorize echo message on Windows command prompt.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."colorizeecho-main".dir   = "main";
  inputs."colorizeecho-main".owner = "nim-nix-pkgs";
  inputs."colorizeecho-main".ref   = "master";
  inputs."colorizeecho-main".repo  = "colorizeecho";
  inputs."colorizeecho-main".type  = "github";
  inputs."colorizeecho-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorizeecho-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
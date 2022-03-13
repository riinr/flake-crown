{
  description = ''getch() for Windows and Unix'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."getch-master".dir   = "master";
  inputs."getch-master".owner = "nim-nix-pkgs";
  inputs."getch-master".ref   = "master";
  inputs."getch-master".repo  = "getch";
  inputs."getch-master".type  = "github";
  inputs."getch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
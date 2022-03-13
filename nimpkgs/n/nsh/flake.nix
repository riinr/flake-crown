{
  description = ''nsh: Nim SHell(cross platform)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nsh-master".dir   = "master";
  inputs."nsh-master".owner = "nim-nix-pkgs";
  inputs."nsh-master".ref   = "master";
  inputs."nsh-master".repo  = "nsh";
  inputs."nsh-master".type  = "github";
  inputs."nsh-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nsh-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
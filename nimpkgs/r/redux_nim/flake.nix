{
  description = ''Redux Implementation in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redux_nim-master".dir   = "master";
  inputs."redux_nim-master".owner = "nim-nix-pkgs";
  inputs."redux_nim-master".ref   = "master";
  inputs."redux_nim-master".repo  = "redux_nim";
  inputs."redux_nim-master".type  = "github";
  inputs."redux_nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redux_nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
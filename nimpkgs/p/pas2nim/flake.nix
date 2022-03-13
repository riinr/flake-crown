{
  description = ''pas2nim is a tool to translate Pascal code to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pas2nim-master".dir   = "master";
  inputs."pas2nim-master".owner = "nim-nix-pkgs";
  inputs."pas2nim-master".ref   = "master";
  inputs."pas2nim-master".repo  = "pas2nim";
  inputs."pas2nim-master".type  = "github";
  inputs."pas2nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pas2nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
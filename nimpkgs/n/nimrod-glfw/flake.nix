{
  description = ''Nim bindings for GLFW library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrod-glfw-master".dir   = "master";
  inputs."nimrod-glfw-master".owner = "nim-nix-pkgs";
  inputs."nimrod-glfw-master".ref   = "master";
  inputs."nimrod-glfw-master".repo  = "nimrod-glfw";
  inputs."nimrod-glfw-master".type  = "github";
  inputs."nimrod-glfw-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod-glfw-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''eaiser use of OpenGL and GLSL shaders'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."phosphor-master".dir   = "master";
  inputs."phosphor-master".owner = "nim-nix-pkgs";
  inputs."phosphor-master".ref   = "master";
  inputs."phosphor-master".repo  = "phosphor";
  inputs."phosphor-master".type  = "github";
  inputs."phosphor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phosphor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
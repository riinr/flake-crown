{
  description = ''Pure Nim, no external dependencies, image mime type and dimension reader for images'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dimage-main".dir   = "main";
  inputs."dimage-main".owner = "nim-nix-pkgs";
  inputs."dimage-main".ref   = "master";
  inputs."dimage-main".repo  = "dimage";
  inputs."dimage-main".type  = "github";
  inputs."dimage-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimage-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
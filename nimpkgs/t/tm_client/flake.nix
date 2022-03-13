{
  description = ''TwineMedia API client library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tm_client-main".dir   = "main";
  inputs."tm_client-main".owner = "nim-nix-pkgs";
  inputs."tm_client-main".ref   = "master";
  inputs."tm_client-main".repo  = "tm_client";
  inputs."tm_client-main".type  = "github";
  inputs."tm_client-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tm_client-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
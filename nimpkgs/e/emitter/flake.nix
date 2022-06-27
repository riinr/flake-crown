{
  description = ''Supranim's Event Emitter - Subscribe & listen for various events within your application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."emitter-main".dir   = "main";
  inputs."emitter-main".owner = "nim-nix-pkgs";
  inputs."emitter-main".ref   = "master";
  inputs."emitter-main".repo  = "emitter";
  inputs."emitter-main".type  = "github";
  inputs."emitter-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emitter-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
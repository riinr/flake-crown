{
  description = ''Farbfeld Encoder and Decoder written in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimff-main".dir   = "main";
  inputs."nimff-main".owner = "nim-nix-pkgs";
  inputs."nimff-main".ref   = "master";
  inputs."nimff-main".repo  = "nimff";
  inputs."nimff-main".type  = "github";
  inputs."nimff-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimff-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
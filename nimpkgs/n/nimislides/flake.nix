{
  description = ''Create Reveal.js slideshows in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimislides-main".dir   = "main";
  inputs."nimislides-main".owner = "nim-nix-pkgs";
  inputs."nimislides-main".ref   = "master";
  inputs."nimislides-main".repo  = "nimislides";
  inputs."nimislides-main".type  = "github";
  inputs."nimislides-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimislides-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimislides-v0_1".dir   = "v0_1";
  inputs."nimislides-v0_1".owner = "nim-nix-pkgs";
  inputs."nimislides-v0_1".ref   = "master";
  inputs."nimislides-v0_1".repo  = "nimislides";
  inputs."nimislides-v0_1".type  = "github";
  inputs."nimislides-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimislides-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
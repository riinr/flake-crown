{
  description = ''Nim wrapper for the Chromium Embedded Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcef-devel".dir   = "devel";
  inputs."nimcef-devel".owner = "nim-nix-pkgs";
  inputs."nimcef-devel".ref   = "master";
  inputs."nimcef-devel".repo  = "nimcef";
  inputs."nimcef-devel".type  = "github";
  inputs."nimcef-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcef-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcef-master".dir   = "master";
  inputs."nimcef-master".owner = "nim-nix-pkgs";
  inputs."nimcef-master".ref   = "master";
  inputs."nimcef-master".repo  = "nimcef";
  inputs."nimcef-master".type  = "github";
  inputs."nimcef-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcef-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
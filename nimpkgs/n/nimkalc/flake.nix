{
  description = ''An advanced parsing library for mathematical expressions and equations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimkalc-main".dir   = "main";
  inputs."nimkalc-main".owner = "nim-nix-pkgs";
  inputs."nimkalc-main".ref   = "master";
  inputs."nimkalc-main".repo  = "nimkalc";
  inputs."nimkalc-main".type  = "github";
  inputs."nimkalc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkalc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimkalc-master".dir   = "master";
  inputs."nimkalc-master".owner = "nim-nix-pkgs";
  inputs."nimkalc-master".ref   = "master";
  inputs."nimkalc-master".repo  = "nimkalc";
  inputs."nimkalc-master".type  = "github";
  inputs."nimkalc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimkalc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
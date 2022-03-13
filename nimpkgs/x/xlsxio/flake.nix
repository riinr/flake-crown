{
  description = ''This is a xlsxio wrapper done Nim in mind.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xlsxio-main".dir   = "main";
  inputs."xlsxio-main".owner = "nim-nix-pkgs";
  inputs."xlsxio-main".ref   = "master";
  inputs."xlsxio-main".repo  = "xlsxio";
  inputs."xlsxio-main".type  = "github";
  inputs."xlsxio-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsxio-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
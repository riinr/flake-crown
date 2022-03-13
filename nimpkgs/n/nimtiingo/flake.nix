{
  description = ''Tiingo'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtiingo-main".dir   = "main";
  inputs."nimtiingo-main".owner = "nim-nix-pkgs";
  inputs."nimtiingo-main".ref   = "master";
  inputs."nimtiingo-main".repo  = "nimtiingo";
  inputs."nimtiingo-main".type  = "github";
  inputs."nimtiingo-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtiingo-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
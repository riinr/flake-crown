{
  description = ''uncomment the codes at the compile time'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uncomment-main".dir   = "main";
  inputs."uncomment-main".owner = "nim-nix-pkgs";
  inputs."uncomment-main".ref   = "master";
  inputs."uncomment-main".repo  = "uncomment";
  inputs."uncomment-main".type  = "github";
  inputs."uncomment-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uncomment-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
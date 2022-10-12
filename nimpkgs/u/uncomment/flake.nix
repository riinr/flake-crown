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
  
  inputs."uncomment-0_0_3".dir   = "0_0_3";
  inputs."uncomment-0_0_3".owner = "nim-nix-pkgs";
  inputs."uncomment-0_0_3".ref   = "master";
  inputs."uncomment-0_0_3".repo  = "uncomment";
  inputs."uncomment-0_0_3".type  = "github";
  inputs."uncomment-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uncomment-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''preprod'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."preprod-main".dir   = "main";
  inputs."preprod-main".owner = "nim-nix-pkgs";
  inputs."preprod-main".ref   = "master";
  inputs."preprod-main".repo  = "preprod";
  inputs."preprod-main".type  = "github";
  inputs."preprod-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preprod-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
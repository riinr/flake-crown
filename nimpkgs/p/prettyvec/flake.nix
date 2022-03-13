{
  description = ''Small library for working with vectors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."prettyvec-main".dir   = "main";
  inputs."prettyvec-main".owner = "nim-nix-pkgs";
  inputs."prettyvec-main".ref   = "master";
  inputs."prettyvec-main".repo  = "prettyvec";
  inputs."prettyvec-main".type  = "github";
  inputs."prettyvec-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prettyvec-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
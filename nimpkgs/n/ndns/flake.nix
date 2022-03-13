{
  description = ''A pure Nim Domain Name System (DNS) client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ndns-main".dir   = "main";
  inputs."ndns-main".owner = "nim-nix-pkgs";
  inputs."ndns-main".ref   = "master";
  inputs."ndns-main".repo  = "ndns";
  inputs."ndns-main".type  = "github";
  inputs."ndns-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndns-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
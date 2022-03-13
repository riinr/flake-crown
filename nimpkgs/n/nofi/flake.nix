{
  description = ''Nim wrapper for rofi, open fabrics interface; provides distributed computing interface for high performance computing (HPC) environments'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nofi-main".dir   = "main";
  inputs."nofi-main".owner = "nim-nix-pkgs";
  inputs."nofi-main".ref   = "master";
  inputs."nofi-main".repo  = "nofi";
  inputs."nofi-main".type  = "github";
  inputs."nofi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nofi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
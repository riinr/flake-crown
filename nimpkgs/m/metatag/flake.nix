{
  description = ''A metadata reading & writing library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."metatag-main".dir   = "main";
  inputs."metatag-main".owner = "nim-nix-pkgs";
  inputs."metatag-main".ref   = "master";
  inputs."metatag-main".repo  = "metatag";
  inputs."metatag-main".type  = "github";
  inputs."metatag-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metatag-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''UTF-8 test cases and supporting code.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."utf8tests-main".dir   = "main";
  inputs."utf8tests-main".owner = "nim-nix-pkgs";
  inputs."utf8tests-main".ref   = "master";
  inputs."utf8tests-main".repo  = "utf8tests";
  inputs."utf8tests-main".type  = "github";
  inputs."utf8tests-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."utf8tests-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
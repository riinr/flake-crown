{
  description = ''Simple API wrapper for Mailcow'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mailcow-main".dir   = "main";
  inputs."mailcow-main".owner = "nim-nix-pkgs";
  inputs."mailcow-main".ref   = "master";
  inputs."mailcow-main".repo  = "mailcow";
  inputs."mailcow-main".type  = "github";
  inputs."mailcow-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mailcow-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
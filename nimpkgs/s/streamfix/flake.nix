{
  description = ''FIX Protocol streaming parser (Financial Information eXchange)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."streamfix-main".dir   = "main";
  inputs."streamfix-main".owner = "nim-nix-pkgs";
  inputs."streamfix-main".ref   = "master";
  inputs."streamfix-main".repo  = "streamfix";
  inputs."streamfix-main".type  = "github";
  inputs."streamfix-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."streamfix-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
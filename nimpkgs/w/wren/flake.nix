{
  description = ''A nim wrapper for Wren, an embedded scripting language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wren-master".dir   = "master";
  inputs."wren-master".owner = "nim-nix-pkgs";
  inputs."wren-master".ref   = "master";
  inputs."wren-master".repo  = "wren";
  inputs."wren-master".type  = "github";
  inputs."wren-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wren-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
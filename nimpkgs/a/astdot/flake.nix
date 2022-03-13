{
  description = ''Prints a dot graph of a nim ast dumped using the `dumpTree` macro.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."astdot-main".dir   = "main";
  inputs."astdot-main".owner = "nim-nix-pkgs";
  inputs."astdot-main".ref   = "master";
  inputs."astdot-main".repo  = "astdot";
  inputs."astdot-main".type  = "github";
  inputs."astdot-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."astdot-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
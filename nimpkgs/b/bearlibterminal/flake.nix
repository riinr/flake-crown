{
  description = ''Wrapper for the C[++] library BearLibTerminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bearlibterminal-master".dir   = "master";
  inputs."bearlibterminal-master".owner = "nim-nix-pkgs";
  inputs."bearlibterminal-master".ref   = "master";
  inputs."bearlibterminal-master".repo  = "bearlibterminal";
  inputs."bearlibterminal-master".type  = "github";
  inputs."bearlibterminal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bearlibterminal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
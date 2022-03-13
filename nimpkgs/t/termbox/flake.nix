{
  description = ''Termbox wrapper.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."termbox-master".dir   = "master";
  inputs."termbox-master".owner = "nim-nix-pkgs";
  inputs."termbox-master".ref   = "master";
  inputs."termbox-master".repo  = "termbox";
  inputs."termbox-master".type  = "github";
  inputs."termbox-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termbox-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
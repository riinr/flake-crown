{
  description = ''A tiny calendar program'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."calendar-master".dir   = "master";
  inputs."calendar-master".owner = "nim-nix-pkgs";
  inputs."calendar-master".ref   = "master";
  inputs."calendar-master".repo  = "calendar";
  inputs."calendar-master".type  = "github";
  inputs."calendar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."calendar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
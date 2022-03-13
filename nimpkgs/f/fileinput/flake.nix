{
  description = ''iterate through files and lines'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fileinput-master".dir   = "master";
  inputs."fileinput-master".owner = "nim-nix-pkgs";
  inputs."fileinput-master".ref   = "master";
  inputs."fileinput-master".repo  = "fileinput";
  inputs."fileinput-master".type  = "github";
  inputs."fileinput-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fileinput-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
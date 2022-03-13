{
  description = ''Wrapper to interface with the Python 3 interpreter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."python3-master".dir   = "master";
  inputs."python3-master".owner = "nim-nix-pkgs";
  inputs."python3-master".ref   = "master";
  inputs."python3-master".repo  = "python3";
  inputs."python3-master".type  = "github";
  inputs."python3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."python3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
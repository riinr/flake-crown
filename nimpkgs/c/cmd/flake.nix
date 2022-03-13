{
  description = ''interactive command prompt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cmd-master".dir   = "master";
  inputs."cmd-master".owner = "nim-nix-pkgs";
  inputs."cmd-master".ref   = "master";
  inputs."cmd-master".repo  = "cmd";
  inputs."cmd-master".type  = "github";
  inputs."cmd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
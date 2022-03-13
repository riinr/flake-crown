{
  description = ''Image transformation and visualization utilities for arraymancer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arraymancer_vision-master".dir   = "master";
  inputs."arraymancer_vision-master".owner = "nim-nix-pkgs";
  inputs."arraymancer_vision-master".ref   = "master";
  inputs."arraymancer_vision-master".repo  = "arraymancer_vision";
  inputs."arraymancer_vision-master".type  = "github";
  inputs."arraymancer_vision-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer_vision-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
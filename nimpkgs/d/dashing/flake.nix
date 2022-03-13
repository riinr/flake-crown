{
  description = ''Terminal dashboards.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dashing-master".dir   = "master";
  inputs."dashing-master".owner = "nim-nix-pkgs";
  inputs."dashing-master".ref   = "master";
  inputs."dashing-master".repo  = "dashing";
  inputs."dashing-master".type  = "github";
  inputs."dashing-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dashing-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dashing-0_1_1".dir   = "0_1_1";
  inputs."dashing-0_1_1".owner = "nim-nix-pkgs";
  inputs."dashing-0_1_1".ref   = "master";
  inputs."dashing-0_1_1".repo  = "dashing";
  inputs."dashing-0_1_1".type  = "github";
  inputs."dashing-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dashing-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
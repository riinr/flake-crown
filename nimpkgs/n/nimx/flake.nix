{
  description = ''Cross-platform GUI framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimx-master".dir   = "master";
  inputs."nimx-master".owner = "nim-nix-pkgs";
  inputs."nimx-master".ref   = "master";
  inputs."nimx-master".repo  = "nimx";
  inputs."nimx-master".type  = "github";
  inputs."nimx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
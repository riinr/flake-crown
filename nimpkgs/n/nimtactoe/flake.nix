{
  description = ''A new awesome nimble package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtactoe-master".dir   = "master";
  inputs."nimtactoe-master".owner = "nim-nix-pkgs";
  inputs."nimtactoe-master".ref   = "master";
  inputs."nimtactoe-master".repo  = "nimtactoe";
  inputs."nimtactoe-master".type  = "github";
  inputs."nimtactoe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtactoe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
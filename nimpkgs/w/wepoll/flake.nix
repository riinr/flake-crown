{
  description = ''Windows epoll wrapper.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wepoll-master".dir   = "master";
  inputs."wepoll-master".owner = "nim-nix-pkgs";
  inputs."wepoll-master".ref   = "master";
  inputs."wepoll-master".repo  = "wepoll";
  inputs."wepoll-master".type  = "github";
  inputs."wepoll-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wepoll-v0_1_0".dir   = "v0_1_0";
  inputs."wepoll-v0_1_0".owner = "nim-nix-pkgs";
  inputs."wepoll-v0_1_0".ref   = "master";
  inputs."wepoll-v0_1_0".repo  = "wepoll";
  inputs."wepoll-v0_1_0".type  = "github";
  inputs."wepoll-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
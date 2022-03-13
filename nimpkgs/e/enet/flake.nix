{
  description = ''Wrapper for ENet UDP networking library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."enet-master".dir   = "master";
  inputs."enet-master".owner = "nim-nix-pkgs";
  inputs."enet-master".ref   = "master";
  inputs."enet-master".repo  = "enet";
  inputs."enet-master".type  = "github";
  inputs."enet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."enet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
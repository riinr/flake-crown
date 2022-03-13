{
  description = ''an interface macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."protocoled-master".dir   = "master";
  inputs."protocoled-master".owner = "nim-nix-pkgs";
  inputs."protocoled-master".ref   = "master";
  inputs."protocoled-master".repo  = "protocoled";
  inputs."protocoled-master".type  = "github";
  inputs."protocoled-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protocoled-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
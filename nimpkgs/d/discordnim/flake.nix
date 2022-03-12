{
  description = ''Discord library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."discordnim-develop".url = "path:./develop";
  inputs."discordnim-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discordnim-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."discordnim-master".url = "path:./master";
  inputs."discordnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."discordnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
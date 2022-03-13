{
  description = ''A Nim implementation of Simon Cooke's Bip Buffer. A type of circular buffer ensuring contiguous blocks of memory'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bipbuffer-master".dir   = "master";
  inputs."bipbuffer-master".owner = "nim-nix-pkgs";
  inputs."bipbuffer-master".ref   = "master";
  inputs."bipbuffer-master".repo  = "bipbuffer";
  inputs."bipbuffer-master".type  = "github";
  inputs."bipbuffer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bipbuffer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
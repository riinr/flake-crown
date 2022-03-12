{
  description = ''A Nim wrapper for the Spotify Web API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spotify-master".url = "path:./master";
  inputs."spotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spotify-v0_1".url = "path:./v0_1";
  inputs."spotify-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spotify-v0_1_1".url = "path:./v0_1_1";
  inputs."spotify-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
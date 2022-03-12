{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."listenbrainz-master".url = "path:./master";
  inputs."listenbrainz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_1_0".url = "path:./0_1_0";
  inputs."listenbrainz-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_1_1".url = "path:./0_1_1";
  inputs."listenbrainz-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_1_2".url = "path:./0_1_2";
  inputs."listenbrainz-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_2".url = "path:./0_2";
  inputs."listenbrainz-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_2_1".url = "path:./0_2_1";
  inputs."listenbrainz-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
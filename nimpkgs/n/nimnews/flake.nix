{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimnews-master".url = "path:./master";
  inputs."nimnews-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnews-latest-master".url = "path:./latest-master";
  inputs."nimnews-latest-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-latest-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnews-v0_0_0".url = "path:./v0_0_0";
  inputs."nimnews-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimnews-v0_1_0".url = "path:./v0_1_0";
  inputs."nimnews-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimnews-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
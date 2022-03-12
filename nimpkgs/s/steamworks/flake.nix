{
  description = ''Steamworks SDK API for shipping games on Steam.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."steamworks-master".url = "path:./master";
  inputs."steamworks-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steamworks-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."steamworks-v0_1_1".url = "path:./v0_1_1";
  inputs."steamworks-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."steamworks-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
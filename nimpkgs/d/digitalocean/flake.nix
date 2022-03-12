{
  description = ''Wrapper for DigitalOcean HTTP API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."digitalocean-master".url = "path:./master";
  inputs."digitalocean-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."digitalocean-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."digitalocean-0_1_1".url = "path:./0_1_1";
  inputs."digitalocean-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."digitalocean-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."digitalocean-v0_1_0".url = "path:./v0_1_0";
  inputs."digitalocean-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."digitalocean-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
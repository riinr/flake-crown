{
  description = ''Hashicorp Vault HTTP Client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vaultclient-master".url = "path:./master";
  inputs."vaultclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vaultclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vaultclient-0_1_0".url = "path:./0_1_0";
  inputs."vaultclient-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vaultclient-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vaultclient-0_1_1".url = "path:./0_1_1";
  inputs."vaultclient-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vaultclient-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
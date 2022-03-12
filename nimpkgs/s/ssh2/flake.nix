{
  description = ''SSH, SCP and SFTP client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ssh2-master".url = "path:./master";
  inputs."ssh2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssh2-0_1_0".url = "path:./0_1_0";
  inputs."ssh2-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssh2-0_1_1".url = "path:./0_1_1";
  inputs."ssh2-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssh2-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
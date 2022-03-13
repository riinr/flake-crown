{
  description = ''Nim-SMBExec - SMBExec implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."smbexec-master".dir   = "master";
  inputs."smbexec-master".owner = "nim-nix-pkgs";
  inputs."smbexec-master".ref   = "master";
  inputs."smbexec-master".repo  = "smbexec";
  inputs."smbexec-master".type  = "github";
  inputs."smbexec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."smbexec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
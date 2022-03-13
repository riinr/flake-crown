{
  description = ''libssh FFI bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libssh-master".dir   = "master";
  inputs."libssh-master".owner = "nim-nix-pkgs";
  inputs."libssh-master".ref   = "master";
  inputs."libssh-master".repo  = "libssh";
  inputs."libssh-master".type  = "github";
  inputs."libssh-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libssh-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libssh-0_90_0".dir   = "0_90_0";
  inputs."libssh-0_90_0".owner = "nim-nix-pkgs";
  inputs."libssh-0_90_0".ref   = "master";
  inputs."libssh-0_90_0".repo  = "libssh";
  inputs."libssh-0_90_0".type  = "github";
  inputs."libssh-0_90_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libssh-0_90_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
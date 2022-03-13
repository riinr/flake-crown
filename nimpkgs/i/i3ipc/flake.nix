{
  description = ''i3 IPC client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."i3ipc-master".dir   = "master";
  inputs."i3ipc-master".owner = "nim-nix-pkgs";
  inputs."i3ipc-master".ref   = "master";
  inputs."i3ipc-master".repo  = "i3ipc";
  inputs."i3ipc-master".type  = "github";
  inputs."i3ipc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."i3ipc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
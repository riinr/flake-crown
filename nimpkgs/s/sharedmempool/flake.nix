{
  description = ''threadsafe memory pool '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sharedmempool-master".dir   = "master";
  inputs."sharedmempool-master".owner = "nim-nix-pkgs";
  inputs."sharedmempool-master".ref   = "master";
  inputs."sharedmempool-master".repo  = "sharedmempool";
  inputs."sharedmempool-master".type  = "github";
  inputs."sharedmempool-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sharedmempool-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
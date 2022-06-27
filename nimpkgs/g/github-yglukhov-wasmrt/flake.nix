{
  description = ''Nim wasm runtime'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wasmrt-master".dir   = "master";
  inputs."wasmrt-master".owner = "nim-nix-pkgs";
  inputs."wasmrt-master".ref   = "master";
  inputs."wasmrt-master".repo  = "wasmrt";
  inputs."wasmrt-master".type  = "github";
  inputs."wasmrt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wasmrt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
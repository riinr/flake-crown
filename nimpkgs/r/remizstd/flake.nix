{
  description = ''Nim bindings for the ZStandard compression library.  Context-based and stream-based APIs available.  Based on the zstd.cr Crystal bindings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."remizstd-v0_1_1".dir   = "v0_1_1";
  inputs."remizstd-v0_1_1".owner = "nim-nix-pkgs";
  inputs."remizstd-v0_1_1".ref   = "master";
  inputs."remizstd-v0_1_1".repo  = "remizstd";
  inputs."remizstd-v0_1_1".type  = "github";
  inputs."remizstd-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remizstd-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
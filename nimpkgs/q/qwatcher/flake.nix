{
  description = ''Monitor TCP connections and diagnose buffer and connectivity issues on Linux machines related to input and output queues'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."qwatcher-master".dir   = "master";
  inputs."qwatcher-master".owner = "nim-nix-pkgs";
  inputs."qwatcher-master".ref   = "master";
  inputs."qwatcher-master".repo  = "qwatcher";
  inputs."qwatcher-master".type  = "github";
  inputs."qwatcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwatcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."qwatcher-v0_1_0".dir   = "v0_1_0";
  inputs."qwatcher-v0_1_0".owner = "nim-nix-pkgs";
  inputs."qwatcher-v0_1_0".ref   = "master";
  inputs."qwatcher-v0_1_0".repo  = "qwatcher";
  inputs."qwatcher-v0_1_0".type  = "github";
  inputs."qwatcher-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qwatcher-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
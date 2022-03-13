{
  description = ''Circular buffer implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ringbuffer-master".dir   = "master";
  inputs."ringbuffer-master".owner = "nim-nix-pkgs";
  inputs."ringbuffer-master".ref   = "master";
  inputs."ringbuffer-master".repo  = "ringbuffer";
  inputs."ringbuffer-master".type  = "github";
  inputs."ringbuffer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ringbuffer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ringbuffer-v0_1".dir   = "v0_1";
  inputs."ringbuffer-v0_1".owner = "nim-nix-pkgs";
  inputs."ringbuffer-v0_1".ref   = "master";
  inputs."ringbuffer-v0_1".repo  = "ringbuffer";
  inputs."ringbuffer-v0_1".type  = "github";
  inputs."ringbuffer-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ringbuffer-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ringbuffer-v0_1_1".dir   = "v0_1_1";
  inputs."ringbuffer-v0_1_1".owner = "nim-nix-pkgs";
  inputs."ringbuffer-v0_1_1".ref   = "master";
  inputs."ringbuffer-v0_1_1".repo  = "ringbuffer";
  inputs."ringbuffer-v0_1_1".type  = "github";
  inputs."ringbuffer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ringbuffer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ringbuffer-v0_1_2".dir   = "v0_1_2";
  inputs."ringbuffer-v0_1_2".owner = "nim-nix-pkgs";
  inputs."ringbuffer-v0_1_2".ref   = "master";
  inputs."ringbuffer-v0_1_2".repo  = "ringbuffer";
  inputs."ringbuffer-v0_1_2".type  = "github";
  inputs."ringbuffer-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ringbuffer-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
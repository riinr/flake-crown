{
  description = ''libnetfilter_queue wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libnetfilter_queue-master".dir   = "master";
  inputs."libnetfilter_queue-master".owner = "nim-nix-pkgs";
  inputs."libnetfilter_queue-master".ref   = "master";
  inputs."libnetfilter_queue-master".repo  = "libnetfilter_queue";
  inputs."libnetfilter_queue-master".type  = "github";
  inputs."libnetfilter_queue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnetfilter_queue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnetfilter_queue-0_1_0".dir   = "0_1_0";
  inputs."libnetfilter_queue-0_1_0".owner = "nim-nix-pkgs";
  inputs."libnetfilter_queue-0_1_0".ref   = "master";
  inputs."libnetfilter_queue-0_1_0".repo  = "libnetfilter_queue";
  inputs."libnetfilter_queue-0_1_0".type  = "github";
  inputs."libnetfilter_queue-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnetfilter_queue-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
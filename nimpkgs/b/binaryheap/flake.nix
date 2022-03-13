{
  description = ''Simple binary heap implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binaryheap-master".dir   = "master";
  inputs."binaryheap-master".owner = "nim-nix-pkgs";
  inputs."binaryheap-master".ref   = "master";
  inputs."binaryheap-master".repo  = "binaryheap";
  inputs."binaryheap-master".type  = "github";
  inputs."binaryheap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryheap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
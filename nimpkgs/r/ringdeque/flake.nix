{
  description = ''deque implementatoin using DoublyLinkedRing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ringdeque-master".dir   = "master";
  inputs."ringdeque-master".owner = "nim-nix-pkgs";
  inputs."ringdeque-master".ref   = "master";
  inputs."ringdeque-master".repo  = "ringdeque";
  inputs."ringdeque-master".type  = "github";
  inputs."ringdeque-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ringdeque-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''MinMaxHeap'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."minmaxheap-master".dir   = "master";
  inputs."minmaxheap-master".owner = "nim-nix-pkgs";
  inputs."minmaxheap-master".ref   = "master";
  inputs."minmaxheap-master".repo  = "minmaxheap";
  inputs."minmaxheap-master".type  = "github";
  inputs."minmaxheap-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minmaxheap-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
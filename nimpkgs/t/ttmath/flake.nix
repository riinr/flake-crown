{
  description = ''A Nim wrapper for ttmath: big numbers with fixed size'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ttmath-master".dir   = "master";
  inputs."ttmath-master".owner = "nim-nix-pkgs";
  inputs."ttmath-master".ref   = "master";
  inputs."ttmath-master".repo  = "ttmath";
  inputs."ttmath-master".type  = "github";
  inputs."ttmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ttmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
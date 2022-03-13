{
  description = ''search algorithms'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_searches-master".dir   = "master";
  inputs."nim_searches-master".owner = "nim-nix-pkgs";
  inputs."nim_searches-master".ref   = "master";
  inputs."nim_searches-master".repo  = "nim_searches";
  inputs."nim_searches-master".type  = "github";
  inputs."nim_searches-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_searches-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''jieba's finalseg port to nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."finalseg-master".dir   = "master";
  inputs."finalseg-master".owner = "nim-nix-pkgs";
  inputs."finalseg-master".ref   = "master";
  inputs."finalseg-master".repo  = "finalseg";
  inputs."finalseg-master".type  = "github";
  inputs."finalseg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finalseg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
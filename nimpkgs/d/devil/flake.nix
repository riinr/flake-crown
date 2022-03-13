{
  description = ''Wrapper for the DevIL image library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."devil-master".dir   = "master";
  inputs."devil-master".owner = "nim-nix-pkgs";
  inputs."devil-master".ref   = "master";
  inputs."devil-master".repo  = "devil";
  inputs."devil-master".type  = "github";
  inputs."devil-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."devil-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
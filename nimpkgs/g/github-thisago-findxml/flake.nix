{
  description = ''XML search easy as JS DOM API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."findxml-master".dir   = "master";
  inputs."findxml-master".owner = "nim-nix-pkgs";
  inputs."findxml-master".ref   = "master";
  inputs."findxml-master".repo  = "findxml";
  inputs."findxml-master".type  = "github";
  inputs."findxml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."findxml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
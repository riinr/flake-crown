{
  description = ''FIX Protocol optimized parser (Financial Information eXchange)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."newfix-master".dir   = "master";
  inputs."newfix-master".owner = "nim-nix-pkgs";
  inputs."newfix-master".ref   = "master";
  inputs."newfix-master".repo  = "newfix";
  inputs."newfix-master".type  = "github";
  inputs."newfix-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."newfix-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
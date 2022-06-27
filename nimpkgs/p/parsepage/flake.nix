{
  description = ''Automatically extracts the data of sites'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parsepage-master".dir   = "master";
  inputs."parsepage-master".owner = "nim-nix-pkgs";
  inputs."parsepage-master".ref   = "master";
  inputs."parsepage-master".repo  = "parsepage";
  inputs."parsepage-master".type  = "github";
  inputs."parsepage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsepage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
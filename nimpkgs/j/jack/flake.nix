{
  description = ''Shiny bindings to the JACK Audio Connection Kit.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jack-master".dir   = "master";
  inputs."jack-master".owner = "nim-nix-pkgs";
  inputs."jack-master".ref   = "master";
  inputs."jack-master".repo  = "jack";
  inputs."jack-master".type  = "github";
  inputs."jack-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jack-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
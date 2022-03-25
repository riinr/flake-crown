{
  description = ''Mustache templating for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moustachu-0_6_0.flake = false;
  inputs.src-moustachu-0_6_0.ref   = "refs/tags/0.6.0";
  inputs.src-moustachu-0_6_0.owner = "fenekku";
  inputs.src-moustachu-0_6_0.repo  = "moustachu";
  inputs.src-moustachu-0_6_0.type  = "github";
  
  inputs."commandeer".owner = "nim-nix-pkgs";
  inputs."commandeer".ref   = "master";
  inputs."commandeer".repo  = "commandeer";
  inputs."commandeer".dir   = "0_12_3";
  inputs."commandeer".type  = "github";
  inputs."commandeer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moustachu-0_6_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-moustachu-0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
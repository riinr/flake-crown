{
  description = ''Mustache templating for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moustachu-0_3_3.flake = false;
  inputs.src-moustachu-0_3_3.owner = "fenekku";
  inputs.src-moustachu-0_3_3.ref   = "0_3_3";
  inputs.src-moustachu-0_3_3.repo  = "moustachu.git";
  inputs.src-moustachu-0_3_3.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moustachu-0_3_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moustachu-0_3_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
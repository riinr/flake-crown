{
  description = ''iterate faster. functional style, lazy like, extensible iterator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-iterrr-0_2_1.flake = false;
  inputs.src-iterrr-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-iterrr-0_2_1.owner = "hamidb80";
  inputs.src-iterrr-0_2_1.repo  = "iterrr";
  inputs.src-iterrr-0_2_1.type  = "github";
  
  inputs."macroplus".owner = "nim-nix-pkgs";
  inputs."macroplus".ref   = "master";
  inputs."macroplus".repo  = "macroplus";
  inputs."macroplus".dir   = "";
  inputs."macroplus".type  = "github";
  inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-iterrr-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-iterrr-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
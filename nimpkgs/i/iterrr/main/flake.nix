{
  description = ''iterate faster. functional style, lazy like, extensible iterator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-iterrr-main.flake = false;
  inputs.src-iterrr-main.owner = "hamidb80";
  inputs.src-iterrr-main.ref   = "refs/heads/main";
  inputs.src-iterrr-main.repo  = "iterrr";
  inputs.src-iterrr-main.type  = "github";
  
  inputs."macroplus".dir   = "nimpkgs/m/macroplus";
  inputs."macroplus".owner = "riinr";
  inputs."macroplus".ref   = "flake-pinning";
  inputs."macroplus".repo  = "flake-nimble";
  inputs."macroplus".type  = "github";
  inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-iterrr-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-iterrr-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Composition pattern with event handling library in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-composition-main.flake = false;
  inputs.src-composition-main.owner = "DavidMeagher1";
  inputs.src-composition-main.ref   = "refs/heads/main";
  inputs.src-composition-main.repo  = "composition";
  inputs.src-composition-main.type  = "github";
  
  inputs."macrosex".dir   = "nimpkgs/m/macrosex";
  inputs."macrosex".owner = "riinr";
  inputs."macrosex".ref   = "flake-pinning";
  inputs."macrosex".repo  = "flake-nimble";
  inputs."macrosex".type  = "github";
  inputs."macrosex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macrosex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-composition-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-composition-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
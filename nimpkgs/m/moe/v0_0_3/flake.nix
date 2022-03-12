{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_0_3.flake = false;
  inputs.src-moe-v0_0_3.owner = "fox0430";
  inputs.src-moe-v0_0_3.ref   = "refs/tags/v0.0.3";
  inputs.src-moe-v0_0_3.repo  = "moe";
  inputs.src-moe-v0_0_3.type  = "github";
  
  inputs."ncurses".dir   = "nimpkgs/n/ncurses";
  inputs."ncurses".owner = "riinr";
  inputs."ncurses".ref   = "flake-pinning";
  inputs."ncurses".repo  = "flake-nimble";
  inputs."ncurses".type  = "github";
  inputs."ncurses".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb".dir   = "nimpkgs/u/unicodedb";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".ref   = "flake-pinning";
  inputs."unicodedb".repo  = "flake-nimble";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
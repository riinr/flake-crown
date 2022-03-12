{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-develop.flake = false;
  inputs.src-moe-develop.owner = "fox0430";
  inputs.src-moe-develop.ref   = "refs/heads/develop";
  inputs.src-moe-develop.repo  = "moe";
  inputs.src-moe-develop.type  = "github";
  
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
  
  inputs."parsetoml".dir   = "nimpkgs/p/parsetoml";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".ref   = "flake-pinning";
  inputs."parsetoml".repo  = "flake-nimble";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moe-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_1_6.flake = false;
  inputs.src-moe-v0_1_6.owner = "fox0430";
  inputs.src-moe-v0_1_6.ref   = "refs/tags/v0.1.6";
  inputs.src-moe-v0_1_6.repo  = "moe";
  inputs.src-moe-v0_1_6.type  = "github";
  
  inputs."https://github.com/walkre-niboshi/nim-ncurses".dir   = "nimpkgs/h/https://github.com/walkre-niboshi/nim-ncurses";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".owner = "riinr";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".ref   = "flake-pinning";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".repo  = "flake-nimble";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".type  = "github";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_1_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_1_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
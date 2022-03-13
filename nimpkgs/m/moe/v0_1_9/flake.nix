{
  description = ''A command lined based text editor inspired by vi/vim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_1_9.flake = false;
  inputs.src-moe-v0_1_9.owner = "fox0430";
  inputs.src-moe-v0_1_9.ref   = "refs/tags/v0.1.9";
  inputs.src-moe-v0_1_9.repo  = "moe";
  inputs.src-moe-v0_1_9.type  = "github";
  
  inputs."https://github.com/walkre-niboshi/nim-ncurses".owner = "nim-nix-pkgs";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".ref   = "master";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".repo  = "https://github.com/walkre-niboshi/nim-ncurses";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".type  = "github";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/walkre-niboshi/nim-ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml".owner = "nim-nix-pkgs";
  inputs."parsetoml".ref   = "master";
  inputs."parsetoml".repo  = "parsetoml";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_1_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_1_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
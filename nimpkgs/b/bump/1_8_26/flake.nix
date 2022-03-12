{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bump-1_8_26.flake = false;
  inputs.src-bump-1_8_26.owner = "disruptek";
  inputs.src-bump-1_8_26.ref   = "refs/tags/1.8.26";
  inputs.src-bump-1_8_26.repo  = "bump";
  inputs.src-bump-1_8_26.type  = "github";
  
  inputs."https://github.com/disruptek/cutelog".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/cutelog".ref   = "master";
  inputs."https://github.com/disruptek/cutelog".repo  = "https://github.com/disruptek/cutelog";
  inputs."https://github.com/disruptek/cutelog".type  = "github";
  inputs."https://github.com/disruptek/cutelog".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/cutelog".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/testes".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/testes".ref   = "master";
  inputs."https://github.com/disruptek/testes".repo  = "https://github.com/disruptek/testes";
  inputs."https://github.com/disruptek/testes".type  = "github";
  inputs."https://github.com/disruptek/testes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/testes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_26"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bump-1_8_26";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
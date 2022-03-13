{
  description = ''Statistic-driven microbenchmark framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-criterion-0_2_6.flake = false;
  inputs.src-criterion-0_2_6.owner = "disruptek";
  inputs.src-criterion-0_2_6.ref   = "refs/tags/0.2.6";
  inputs.src-criterion-0_2_6.repo  = "criterion";
  inputs.src-criterion-0_2_6.type  = "github";
  
  inputs."https://github.com/disruptek/testes".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/testes".ref   = "master";
  inputs."https://github.com/disruptek/testes".repo  = "https://github.com/disruptek/testes";
  inputs."https://github.com/disruptek/testes".type  = "github";
  inputs."https://github.com/disruptek/testes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/testes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-criterion-0_2_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-criterion-0_2_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''a cure for salty testes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testes-0_1_4.flake = false;
  inputs.src-testes-0_1_4.ref   = "refs/tags/0.1.4";
  inputs.src-testes-0_1_4.owner = "disruptek";
  inputs.src-testes-0_1_4.repo  = "testes";
  inputs.src-testes-0_1_4.type  = "github";
  
  inputs."bump".owner = "nim-nix-pkgs";
  inputs."bump".ref   = "master";
  inputs."bump".repo  = "bump";
  inputs."bump".dir   = "1_8_32";
  inputs."bump".type  = "github";
  inputs."bump".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-cutelog".owner = "nim-nix-pkgs";
  inputs."github-disruptek-cutelog".ref   = "master";
  inputs."github-disruptek-cutelog".repo  = "github-disruptek-cutelog";
  inputs."github-disruptek-cutelog".dir   = "1_1_2";
  inputs."github-disruptek-cutelog".type  = "github";
  inputs."github-disruptek-cutelog".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-cutelog".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testes-0_1_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-testes-0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''a cure for salty testes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testes-master.flake = false;
  inputs.src-testes-master.ref   = "refs/heads/master";
  inputs.src-testes-master.owner = "disruptek";
  inputs.src-testes-master.repo  = "testes";
  inputs.src-testes-master.type  = "github";
  
  inputs."github-disruptek-grok".owner = "nim-nix-pkgs";
  inputs."github-disruptek-grok".ref   = "master";
  inputs."github-disruptek-grok".repo  = "github-disruptek-grok";
  inputs."github-disruptek-grok".dir   = "0_6_3";
  inputs."github-disruptek-grok".type  = "github";
  inputs."github-disruptek-grok".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-grok".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-ups".owner = "nim-nix-pkgs";
  inputs."github-disruptek-ups".ref   = "master";
  inputs."github-disruptek-ups".repo  = "github-disruptek-ups";
  inputs."github-disruptek-ups".dir   = "0_0_7";
  inputs."github-disruptek-ups".type  = "github";
  inputs."github-disruptek-ups".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-ups".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testes-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-testes-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
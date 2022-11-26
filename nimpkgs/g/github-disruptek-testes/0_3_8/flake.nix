{
  description = ''a cure for salty testes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testes-0_3_8.flake = false;
  inputs.src-testes-0_3_8.ref   = "refs/tags/0.3.8";
  inputs.src-testes-0_3_8.owner = "disruptek";
  inputs.src-testes-0_3_8.repo  = "testes";
  inputs.src-testes-0_3_8.type  = "github";
  
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
  
  inputs."github-disruptek-grok".owner = "nim-nix-pkgs";
  inputs."github-disruptek-grok".ref   = "master";
  inputs."github-disruptek-grok".repo  = "github-disruptek-grok";
  inputs."github-disruptek-grok".dir   = "0_6_3";
  inputs."github-disruptek-grok".type  = "github";
  inputs."github-disruptek-grok".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-grok".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytes2human".owner = "nim-nix-pkgs";
  inputs."bytes2human".ref   = "master";
  inputs."bytes2human".repo  = "bytes2human";
  inputs."bytes2human".dir   = "master";
  inputs."bytes2human".type  = "github";
  inputs."bytes2human".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytes2human".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testes-0_3_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-testes-0_3_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
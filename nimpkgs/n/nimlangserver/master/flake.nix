{
  description = ''Nim language server for IDEs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimlangserver-master.flake = false;
  inputs.src-nimlangserver-master.ref   = "refs/heads/master";
  inputs.src-nimlangserver-master.owner = "nim-lang";
  inputs.src-nimlangserver-master.repo  = "langserver";
  inputs.src-nimlangserver-master.type  = "github";
  
  inputs."github-yyoncho-asynctools".owner = "nim-nix-pkgs";
  inputs."github-yyoncho-asynctools".ref   = "master";
  inputs."github-yyoncho-asynctools".repo  = "github-yyoncho-asynctools";
  inputs."github-yyoncho-asynctools".dir   = "master";
  inputs."github-yyoncho-asynctools".type  = "github";
  inputs."github-yyoncho-asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yyoncho-asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yyoncho-json_rpc".owner = "nim-nix-pkgs";
  inputs."github-yyoncho-json_rpc".ref   = "master";
  inputs."github-yyoncho-json_rpc".repo  = "github-yyoncho-json_rpc";
  inputs."github-yyoncho-json_rpc".dir   = "master";
  inputs."github-yyoncho-json_rpc".type  = "github";
  inputs."github-yyoncho-json_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yyoncho-json_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."with".owner = "nim-nix-pkgs";
  inputs."with".ref   = "master";
  inputs."with".repo  = "with";
  inputs."with".dir   = "0_4_0";
  inputs."with".type  = "github";
  inputs."with".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools".owner = "nim-nix-pkgs";
  inputs."itertools".ref   = "master";
  inputs."itertools".repo  = "itertools";
  inputs."itertools".dir   = "v0_4_0";
  inputs."itertools".type  = "github";
  inputs."itertools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".dir   = "v0_10_2";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimlangserver-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimlangserver-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
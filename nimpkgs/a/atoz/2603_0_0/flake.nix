{
  description = ''Amazon Web Services (AWS) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-atoz-2603_0_0.flake = false;
  inputs.src-atoz-2603_0_0.ref   = "refs/tags/2603.0.0";
  inputs.src-atoz-2603_0_0.owner = "disruptek";
  inputs.src-atoz-2603_0_0.repo  = "atoz";
  inputs.src-atoz-2603_0_0.type  = "github";
  
  inputs."sigv4".owner = "nim-nix-pkgs";
  inputs."sigv4".ref   = "master";
  inputs."sigv4".repo  = "sigv4";
  inputs."sigv4".dir   = "1_4_0";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-rest".owner = "nim-nix-pkgs";
  inputs."github-disruptek-rest".ref   = "master";
  inputs."github-disruptek-rest".repo  = "github-disruptek-rest";
  inputs."github-disruptek-rest".dir   = "1_0_5";
  inputs."github-disruptek-rest".type  = "github";
  inputs."github-disruptek-rest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-rest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-atoz-2603_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-atoz-2603_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
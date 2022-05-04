{
  description = ''github api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-master.flake = false;
  inputs.src-github-master.ref   = "refs/heads/master";
  inputs.src-github-master.owner = "disruptek";
  inputs.src-github-master.repo  = "github";
  inputs.src-github-master.type  = "github";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
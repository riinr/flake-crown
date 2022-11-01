{
  description = ''semaphores'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-semaphores-0_0_1.flake = false;
  inputs.src-semaphores-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-semaphores-0_0_1.owner = "disruptek";
  inputs.src-semaphores-0_0_1.repo  = "semaphores";
  inputs.src-semaphores-0_0_1.type  = "github";
  
  inputs."github-disruptek-balls".owner = "nim-nix-pkgs";
  inputs."github-disruptek-balls".ref   = "master";
  inputs."github-disruptek-balls".repo  = "github-disruptek-balls";
  inputs."github-disruptek-balls".dir   = "3_7_2";
  inputs."github-disruptek-balls".type  = "github";
  inputs."github-disruptek-balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."criterion".owner = "nim-nix-pkgs";
  inputs."criterion".ref   = "master";
  inputs."criterion".repo  = "criterion";
  inputs."criterion".dir   = "0_2_8";
  inputs."criterion".type  = "github";
  inputs."criterion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."criterion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-semaphores-0_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-semaphores-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
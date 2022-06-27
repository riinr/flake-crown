{
  description = ''a unittest framework with balls 🔴🟡🟢'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-balls-3_3_3.flake = false;
  inputs.src-balls-3_3_3.ref   = "refs/tags/3.3.3";
  inputs.src-balls-3_3_3.owner = "disruptek";
  inputs.src-balls-3_3_3.repo  = "balls";
  inputs.src-balls-3_3_3.type  = "github";
  
  inputs."github-disruptek-grok".owner = "nim-nix-pkgs";
  inputs."github-disruptek-grok".ref   = "master";
  inputs."github-disruptek-grok".repo  = "github-disruptek-grok";
  inputs."github-disruptek-grok".dir   = "0_5_3";
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
  
  inputs."github-disruptek-semaphores".owner = "nim-nix-pkgs";
  inputs."github-disruptek-semaphores".ref   = "master";
  inputs."github-disruptek-semaphores".repo  = "github-disruptek-semaphores";
  inputs."github-disruptek-semaphores".dir   = "0_0_4";
  inputs."github-disruptek-semaphores".type  = "github";
  inputs."github-disruptek-semaphores".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-semaphores".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-balls-3_3_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-balls-3_3_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''a unittest framework with balls 🔴🟡🟢'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-balls-rc.flake = false;
  inputs.src-balls-rc.ref   = "refs/tags/rc";
  inputs.src-balls-rc.owner = "disruptek";
  inputs.src-balls-rc.repo  = "balls";
  inputs.src-balls-rc.type  = "github";
  
  inputs."github-disruptek-grok".owner = "nim-nix-pkgs";
  inputs."github-disruptek-grok".ref   = "master";
  inputs."github-disruptek-grok".repo  = "github-disruptek-grok";
  inputs."github-disruptek-grok".dir   = "0_6_2";
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-balls-rc"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-balls-rc";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
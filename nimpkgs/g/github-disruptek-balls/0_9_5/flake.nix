{
  description = ''a unittest framework with balls 🔴🟡🟢'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-disruptek-balls-0_9_5.flake = false;
  inputs.src-github-disruptek-balls-0_9_5.ref   = "refs/tags/0.9.5";
  inputs.src-github-disruptek-balls-0_9_5.owner = "disruptek";
  inputs.src-github-disruptek-balls-0_9_5.repo  = "balls";
  inputs.src-github-disruptek-balls-0_9_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-disruptek-balls-0_9_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-disruptek-balls-0_9_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
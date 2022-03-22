{
  description = ''Accurate summation functions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sums-main.flake = false;
  inputs.src-sums-main.ref   = "refs/heads/main";
  inputs.src-sums-main.owner = "planetis-m";
  inputs.src-sums-main.repo  = "sums";
  inputs.src-sums-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sums-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sums-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
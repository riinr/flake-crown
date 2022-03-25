{
  description = ''OpenExchangeRates API Client for Nim. Works with/without SSL. Partially works with/without Free API Key.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-openexchangerates-master.flake = false;
  inputs.src-openexchangerates-master.ref   = "refs/heads/master";
  inputs.src-openexchangerates-master.owner = "juancarlospaco";
  inputs.src-openexchangerates-master.repo  = "nim-openexchangerates";
  inputs.src-openexchangerates-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-openexchangerates-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-openexchangerates-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
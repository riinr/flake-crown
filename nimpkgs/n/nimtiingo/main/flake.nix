{
  description = ''Tiingo'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimTiingo-main.flake = false;
  inputs.src-nimTiingo-main.owner = "rolandgg";
  inputs.src-nimTiingo-main.ref   = "refs/heads/main";
  inputs.src-nimTiingo-main.repo  = "nimTiingo";
  inputs.src-nimTiingo-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimTiingo-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimTiingo-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
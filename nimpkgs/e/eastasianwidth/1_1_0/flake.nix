{
  description = ''eastasianwidth is library for EastAsianWidth.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eastasianwidth-1_1_0.flake = false;
  inputs.src-eastasianwidth-1_1_0.ref   = "refs/tags/1.1.0";
  inputs.src-eastasianwidth-1_1_0.owner = "jiro4989";
  inputs.src-eastasianwidth-1_1_0.repo  = "eastasianwidth";
  inputs.src-eastasianwidth-1_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eastasianwidth-1_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-eastasianwidth-1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
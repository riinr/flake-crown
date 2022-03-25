{
  description = ''Bindings for ZStandard'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-remizstd-v0_1_1.flake = false;
  inputs.src-remizstd-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-remizstd-v0_1_1.owner = "RemiliaScarlet";
  inputs.src-remizstd-v0_1_1.repo  = "remizstd";
  inputs.src-remizstd-v0_1_1.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-remizstd-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-remizstd-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
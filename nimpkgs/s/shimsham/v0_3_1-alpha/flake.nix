{
  description = ''Hashing/Digest collection in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shimsham-v0_3_1-alpha.flake = false;
  inputs.src-shimsham-v0_3_1-alpha.ref   = "refs/tags/v0.3.1-alpha";
  inputs.src-shimsham-v0_3_1-alpha.owner = "apense";
  inputs.src-shimsham-v0_3_1-alpha.repo  = "shimsham";
  inputs.src-shimsham-v0_3_1-alpha.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shimsham-v0_3_1-alpha"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-shimsham-v0_3_1-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
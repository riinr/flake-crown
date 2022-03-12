{
  description = ''Hashing/Digest collection in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-shimsham-v0_2_0-alpha.flake = false;
  inputs.src-shimsham-v0_2_0-alpha.owner = "apense";
  inputs.src-shimsham-v0_2_0-alpha.ref   = "refs/tags/v0.2.0-alpha";
  inputs.src-shimsham-v0_2_0-alpha.repo  = "shimsham";
  inputs.src-shimsham-v0_2_0-alpha.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-shimsham-v0_2_0-alpha"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-shimsham-v0_2_0-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
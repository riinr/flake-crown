{
  description = ''Wrapper for the markdown rendering hoedown library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-midnight_dynamite-v0_2_2.flake = false;
  inputs.src-midnight_dynamite-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-midnight_dynamite-v0_2_2.owner = "Araq";
  inputs.src-midnight_dynamite-v0_2_2.repo  = "midnight_dynamite";
  inputs.src-midnight_dynamite-v0_2_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-midnight_dynamite-v0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-midnight_dynamite-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
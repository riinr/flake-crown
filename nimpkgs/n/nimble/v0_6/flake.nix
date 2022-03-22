{
  description = ''Nim package manager.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimble-v0_6.flake = false;
  inputs.src-nimble-v0_6.owner = "nim-lang";
  inputs.src-nimble-v0_6.ref   = "v0_6";
  inputs.src-nimble-v0_6.repo  = "nimble";
  inputs.src-nimble-v0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimble-v0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
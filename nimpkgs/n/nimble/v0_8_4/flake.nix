{
  description = ''Nimble package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimble-v0_8_4.flake = false;
  inputs.src-nimble-v0_8_4.owner = "nim-lang";
  inputs.src-nimble-v0_8_4.ref   = "refs/tags/v0.8.4";
  inputs.src-nimble-v0_8_4.repo  = "nimble";
  inputs.src-nimble-v0_8_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_8_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimble-v0_8_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
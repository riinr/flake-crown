{
  description = ''Nimble package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimble-v0_11_0.flake = false;
  inputs.src-nimble-v0_11_0.owner = "nim-lang";
  inputs.src-nimble-v0_11_0.ref   = "refs/tags/v0.11.0";
  inputs.src-nimble-v0_11_0.repo  = "nimble";
  inputs.src-nimble-v0_11_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_11_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimble-v0_11_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
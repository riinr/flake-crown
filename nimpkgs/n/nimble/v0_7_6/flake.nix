{
  description = ''Nimble package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimble-v0_7_6.flake = false;
  inputs.src-nimble-v0_7_6.owner = "nim-lang";
  inputs.src-nimble-v0_7_6.ref   = "refs/tags/v0.7.6";
  inputs.src-nimble-v0_7_6.repo  = "nimble";
  inputs.src-nimble-v0_7_6.type  = "github";
  
  inputs."compiler".dir   = "nimpkgs/c/compiler";
  inputs."compiler".owner = "riinr";
  inputs."compiler".ref   = "flake-pinning";
  inputs."compiler".repo  = "flake-nimble";
  inputs."compiler".type  = "github";
  inputs."compiler".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compiler".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimble-v0_7_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimble-v0_7_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
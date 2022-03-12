{
  description = ''nim package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slim-v0_1_9.flake = false;
  inputs.src-slim-v0_1_9.owner = "bung87";
  inputs.src-slim-v0_1_9.ref   = "refs/tags/v0.1.9";
  inputs.src-slim-v0_1_9.repo  = "slim";
  inputs.src-slim-v0_1_9.type  = "github";
  
  inputs."fusion".dir   = "nimpkgs/f/fusion";
  inputs."fusion".owner = "riinr";
  inputs."fusion".ref   = "flake-pinning";
  inputs."fusion".repo  = "flake-nimble";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slim-v0_1_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slim-v0_1_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''eachdo executes commands with each multidimensional values'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eachdo-v0_1_1.flake = false;
  inputs.src-eachdo-v0_1_1.owner = "jiro4989";
  inputs.src-eachdo-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-eachdo-v0_1_1.repo  = "eachdo";
  inputs.src-eachdo-v0_1_1.type  = "github";
  
  inputs."argparse".dir   = "nimpkgs/a/argparse";
  inputs."argparse".owner = "riinr";
  inputs."argparse".ref   = "flake-pinning";
  inputs."argparse".repo  = "flake-nimble";
  inputs."argparse".type  = "github";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eachdo-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eachdo-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
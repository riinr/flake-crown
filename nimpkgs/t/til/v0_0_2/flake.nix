{
  description = ''til-tool: Today I Learned tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-til-v0_0_2.flake = false;
  inputs.src-til-v0_0_2.owner = "danielecook";
  inputs.src-til-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-til-v0_0_2.repo  = "til-tool";
  inputs.src-til-v0_0_2.type  = "github";
  
  inputs."colorize".dir   = "nimpkgs/c/colorize";
  inputs."colorize".owner = "riinr";
  inputs."colorize".ref   = "flake-pinning";
  inputs."colorize".repo  = "flake-nimble";
  inputs."colorize".type  = "github";
  inputs."colorize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-til-v0_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-til-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
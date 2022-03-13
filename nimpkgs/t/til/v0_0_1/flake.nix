{
  description = ''til-tool: Today I Learned tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-til-v0_0_1.flake = false;
  inputs.src-til-v0_0_1.owner = "danielecook";
  inputs.src-til-v0_0_1.ref   = "refs/tags/v0.0.1";
  inputs.src-til-v0_0_1.repo  = "til-tool";
  inputs.src-til-v0_0_1.type  = "github";
  
  inputs."colorize".owner = "nim-nix-pkgs";
  inputs."colorize".ref   = "master";
  inputs."colorize".repo  = "colorize";
  inputs."colorize".type  = "github";
  inputs."colorize".inputs.nixpkgs.follows = "nixpkgs";
  inputs."colorize".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse".owner = "nim-nix-pkgs";
  inputs."argparse".ref   = "master";
  inputs."argparse".repo  = "argparse";
  inputs."argparse".type  = "github";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-til-v0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-til-v0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''til-tool: Today I Learned tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-til-master.flake = false;
  inputs.src-til-master.owner = "danielecook";
  inputs.src-til-master.ref   = "refs/heads/master";
  inputs.src-til-master.repo  = "til-tool";
  inputs.src-til-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-til-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-til-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
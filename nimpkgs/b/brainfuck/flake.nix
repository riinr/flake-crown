{
  description = ''A brainfuck interpreter and compiler'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."brainfuck-master".dir   = "master";
  inputs."brainfuck-master".owner = "nim-nix-pkgs";
  inputs."brainfuck-master".ref   = "master";
  inputs."brainfuck-master".repo  = "brainfuck";
  inputs."brainfuck-master".type  = "github";
  inputs."brainfuck-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brainfuck-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
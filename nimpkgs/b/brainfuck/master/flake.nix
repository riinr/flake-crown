{
  description = ''A brainfuck interpreter and compiler'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-brainfuck-master.flake = false;
  inputs.src-brainfuck-master.owner = "def-";
  inputs.src-brainfuck-master.ref   = "refs/heads/master";
  inputs.src-brainfuck-master.repo  = "nim-brainfuck";
  inputs.src-brainfuck-master.type  = "github";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-brainfuck-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-brainfuck-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Nim0 is a toy one-pass compiler for a limited subset of the Nim language, targetting a 32-bit RISC CPU. Compiled Nim0 programs can be executed in the RISC emulator. All this in 5 heavily documented sources, totalling less than 4k LOC. It is a port of Niklaus Wirth's Oberon-0 compiler as described in his book Compiler construction (included in the package), cross-referenced in the sources, that you can follow while reading the book.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim0-master.flake = false;
  inputs.src-nim0-master.ref   = "refs/heads/master";
  inputs.src-nim0-master.owner = "pmetras";
  inputs.src-nim0-master.repo  = "nim0";
  inputs.src-nim0-master.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim0-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim0-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
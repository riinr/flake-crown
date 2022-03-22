{
  description = ''Parser for Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_parser-master.flake = false;
  inputs.src-cirru_parser-master.ref   = "refs/heads/master";
  inputs.src-cirru_parser-master.owner = "Cirru";
  inputs.src-cirru_parser-master.repo  = "parser.nim";
  inputs.src-cirru_parser-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_parser-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_parser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
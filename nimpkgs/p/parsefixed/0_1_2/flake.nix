{
  description = ''parser for text files with Fixed-Width fields'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-parsefixed-0_1_2.flake = false;
  inputs.src-parsefixed-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-parsefixed-0_1_2.owner = "jlp765";
  inputs.src-parsefixed-0_1_2.repo  = "parsefixed";
  inputs.src-parsefixed-0_1_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-parsefixed-0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-parsefixed-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
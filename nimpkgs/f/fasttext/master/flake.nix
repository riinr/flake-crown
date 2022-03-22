{
  description = ''fastText porting in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fasttext-master.flake = false;
  inputs.src-fasttext-master.ref   = "refs/heads/master";
  inputs.src-fasttext-master.owner = "bung87";
  inputs.src-fasttext-master.repo  = "fastText";
  inputs.src-fasttext-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fasttext-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fasttext-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
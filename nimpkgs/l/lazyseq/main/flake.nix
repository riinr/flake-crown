{
  description = ''Lazy evaluated sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lazyseq-main.flake = false;
  inputs.src-lazyseq-main.ref   = "refs/heads/main";
  inputs.src-lazyseq-main.owner = "markspanbroek";
  inputs.src-lazyseq-main.repo  = "nim-lazyseq";
  inputs.src-lazyseq-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lazyseq-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lazyseq-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''ctrulib wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ctrulib-master.flake = false;
  inputs.src-ctrulib-master.owner = "skyforce77";
  inputs.src-ctrulib-master.ref   = "refs/heads/master";
  inputs.src-ctrulib-master.repo  = "ctrulib-nim";
  inputs.src-ctrulib-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ctrulib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ctrulib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Converts html to karax.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-html2karax-master.flake = false;
  inputs.src-html2karax-master.owner = "nim-lang-cn";
  inputs.src-html2karax-master.ref   = "refs/heads/master";
  inputs.src-html2karax-master.repo  = "html2karax";
  inputs.src-html2karax-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-html2karax-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-html2karax-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
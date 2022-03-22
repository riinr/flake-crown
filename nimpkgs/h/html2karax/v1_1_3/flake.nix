{
  description = ''Converts html to karax.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-html2karax-v1_1_3.flake = false;
  inputs.src-html2karax-v1_1_3.owner = "nim-lang-cn";
  inputs.src-html2karax-v1_1_3.ref   = "v1_1_3";
  inputs.src-html2karax-v1_1_3.repo  = "html2karax";
  inputs.src-html2karax-v1_1_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-html2karax-v1_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-html2karax-v1_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A Beautiful Markdown Parser in the Nim World.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-markdown-v0_7_1.flake = false;
  inputs.src-markdown-v0_7_1.owner = "soasme";
  inputs.src-markdown-v0_7_1.ref   = "refs/tags/v0.7.1";
  inputs.src-markdown-v0_7_1.repo  = "nim-markdown";
  inputs.src-markdown-v0_7_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-markdown-v0_7_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-markdown-v0_7_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
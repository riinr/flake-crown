{
  description = ''A Beautiful Markdown Parser in the Nim World.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-markdown-v0_5_2.flake = false;
  inputs.src-markdown-v0_5_2.owner = "soasme";
  inputs.src-markdown-v0_5_2.ref   = "refs/tags/v0.5.2";
  inputs.src-markdown-v0_5_2.repo  = "nim-markdown";
  inputs.src-markdown-v0_5_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-markdown-v0_5_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-markdown-v0_5_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
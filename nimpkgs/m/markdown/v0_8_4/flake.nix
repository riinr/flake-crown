{
  description = ''A Markdown Parser in Nim World.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-markdown-v0_8_4.flake = false;
  inputs.src-markdown-v0_8_4.ref   = "refs/tags/v0.8.4";
  inputs.src-markdown-v0_8_4.owner = "soasme";
  inputs.src-markdown-v0_8_4.repo  = "nim-markdown";
  inputs.src-markdown-v0_8_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-markdown-v0_8_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-markdown-v0_8_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
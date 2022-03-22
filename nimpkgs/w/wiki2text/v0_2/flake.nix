{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wiki2text-v0_2.flake = false;
  inputs.src-wiki2text-v0_2.ref   = "refs/tags/v0.2";
  inputs.src-wiki2text-v0_2.owner = "rspeer";
  inputs.src-wiki2text-v0_2.repo  = "wiki2text";
  inputs.src-wiki2text-v0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wiki2text-v0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wiki2text-v0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
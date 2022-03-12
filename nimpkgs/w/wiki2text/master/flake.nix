{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wiki2text-master.flake = false;
  inputs.src-wiki2text-master.owner = "rspeer";
  inputs.src-wiki2text-master.ref   = "refs/heads/master";
  inputs.src-wiki2text-master.repo  = "wiki2text";
  inputs.src-wiki2text-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wiki2text-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wiki2text-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
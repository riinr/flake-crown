{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-translation-master.flake = false;
  inputs.src-translation-master.owner = "juancarlospaco";
  inputs.src-translation-master.ref   = "refs/heads/master";
  inputs.src-translation-master.repo  = "nim-tinyslation";
  inputs.src-translation-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-translation-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-translation-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
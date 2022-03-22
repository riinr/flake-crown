{
  description = ''Text string translation from free online crowdsourced API. Tinyslation a tiny translation. Sync and Async support (MultiSync). No API Key required.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-translation-0_3_1.flake = false;
  inputs.src-translation-0_3_1.ref   = "refs/tags/0.3.1";
  inputs.src-translation-0_3_1.owner = "juancarlospaco";
  inputs.src-translation-0_3_1.repo  = "nim-tinyslation";
  inputs.src-translation-0_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-translation-0_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-translation-0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
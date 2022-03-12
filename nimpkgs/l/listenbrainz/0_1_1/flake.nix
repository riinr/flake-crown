{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-listenbrainz-0_1_1.flake = false;
  inputs.src-listenbrainz-0_1_1.owner = "tandy1000";
  inputs.src-listenbrainz-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-listenbrainz-0_1_1.repo  = "listenbrainz-nim";
  inputs.src-listenbrainz-0_1_1.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-listenbrainz-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
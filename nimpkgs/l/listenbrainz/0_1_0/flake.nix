{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-listenbrainz-0_1_0.flake = false;
  inputs.src-listenbrainz-0_1_0.owner = "tandy1000";
  inputs.src-listenbrainz-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-listenbrainz-0_1_0.repo  = "listenbrainz-nim";
  inputs.src-listenbrainz-0_1_0.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-listenbrainz-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
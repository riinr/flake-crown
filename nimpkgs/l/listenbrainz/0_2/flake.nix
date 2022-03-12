{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-listenbrainz-0_2.flake = false;
  inputs.src-listenbrainz-0_2.owner = "tandy1000";
  inputs.src-listenbrainz-0_2.ref   = "refs/tags/0.2";
  inputs.src-listenbrainz-0_2.repo  = "listenbrainz-nim";
  inputs.src-listenbrainz-0_2.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-listenbrainz-0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-listenbrainz-0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}